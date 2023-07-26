#!mainFile "../../main.opy"

subroutine initBaptiste

rule "[baptiste.opy]: Detect Baptiste initialization":
    @Event eachPlayer
    @Hero baptiste
    @Condition eventPlayer.initialized == false # without this flag, the reset code in generic.opy executes after initialization

    initBaptiste()
    eventPlayer.initialized = true


def initBaptiste():
    @Name "[baptiste.opy]: initBaptiste()"
    
    eventPlayer.setAmmo(0, OW1_BAPTISTE_CLIP1_SIZE)
    eventPlayer.setMaxAmmo(0, OW1_BAPTISTE_CLIP1_SIZE)

    eventPlayer.setAmmo(1, OW1_BAPTISTE_CLIP2_SIZE)
    eventPlayer.setMaxAmmo(1, OW1_BAPTISTE_CLIP2_SIZE)

    # Remove burst healing from regenerative burst
    startHealingModification(eventPlayer, eventPlayer, OW1_HEALING_MODIFICATION, HealingReeval.RECEIVERS_HEALERS_AND_HEALPERCENT)
    eventPlayer.healing_modification = getLastHealingModification()
    eventPlayer.setHealingDealt(percent(OW1_HEALING_MODIFICATION))

rule "[baptiste.opy]: Set default immortality field cooldown":
    @Event eachPlayer
    @Hero baptiste
    @Condition eventPlayer.isUsingAbility2()
    
    waitUntil(not eventPlayer.isUsingAbility2(), 9999)
    eventPlayer.setAbilityCooldown(Button.ABILITY_2, OW1_BAPTISTE_IMMORTALITY_FIELD_COOLDOWN_TIME)
    
rule "[baptiste.opy]: Use OW1 regenerative burst":
    @Event playerReceivedHealing 
    @Condition eventAbility == Button.ABILITY_1
    @Condition healer.getCurrentHero() == Hero.BAPTISTE

    damage(healee,null,eventHealing)
    if healee == healer :
        healer.startHoT(healer, OW1_BAPTISTE_REGEN_BURST_DURATION, OW1_BAPTISTE_REGEN_BURST_SELF_HPS)
        eventPlayer.setAbilityCooldown(Button.ABILITY_1,OW1_BAPTISTE_REGEN_BURST_COOLDOWN)
    else : 
        healee.startHoT(healer, OW1_BAPTISTE_REGEN_BURST_DURATION, OW1_BAPTISTE_REGEN_BURST_ALLY_HPS)
    
    wait(OW1_BAPTISTE_REGEN_BURST_DURATION)


rule "[baptiste.opy]: Increase secondary fire healing":
    @Event playerReceivedHealing 
    @Condition eventAbility == Button.SECONDARY_FIRE
    @Condition healer.getCurrentHero() == Hero.BAPTISTE

    heal(healee,healer,eventHealing / OW1_HEALING_MODIFICATION - eventHealing)

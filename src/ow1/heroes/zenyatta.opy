#!mainFile "../../main.opy"

subroutine initZenyatta

rule "[zenyatta.opy]: Detect Zenyatta initialization":
    @Event eachPlayer
    @Hero zenyatta
    @Condition eventPlayer.initialized == false # without this flag, the reset code in generic.opy executes after initialization

    initZenyatta()
    startHealingModification(eventPlayer, eventPlayer, OW1_HEALING_MODIFICATION, HealingReeval.RECEIVERS_HEALERS_AND_HEALPERCENT)
    eventPlayer.healing_modification = getLastHealingModification()

    eventPlayer.initialized = true


def initZenyatta():
    @Name "[zenyatta.opy]: initZenyatta()"
    eventPlayer.setAmmo(0, OW1_ZENYATTA_CLIP_SIZE)
    eventPlayer.setMaxAmmo(0, OW1_ZENYATTA_CLIP_SIZE)
    eventPlayer.setKnockbackDealt(5)


rule "[zenyatta.opy]: Heal zenyata during ultimate":
    @Event eachPlayer
    @Hero zenyatta
    @Condition eventPlayer.isUsingUltimate() == true

    heal(eventPlayer,null,200)
#!mainFile "../../main.opy"

subroutine initEcho

globalvar  health_pool

playervar hero_id_duplicated

rule "[echo.opy]: Tank armor, shields and health for every tank":
    health_pool[heroID(Hero.DVA)] = [OW1_DVA_HEALTH,OW1_DVA_ARMOR,OW1_DVA_SHIELDS]
    health_pool[heroID(Hero.HAMMOND)] = [OW1_WRECKING_BALL_HEALTH,OW1_WRECKING_BALL_ARMOR,OW1_WRECKING_BALL_SHIELDS]
    health_pool[heroID(Hero.ORISA)] = [OW1_ORISA_HEALTH,OW1_ORISA_ARMOR,OW1_ORISA_SHIELDS]
    health_pool[heroID(Hero.REINHARDT)] = [OW1_REINHARDT_HEALTH,OW1_REINHARDT_ARMOR,OW1_REINHARDT_SHIELDS]
    health_pool[heroID(Hero.ROADHOG)] = [OW1_ROADHOG_HEALTH,OW1_ROADHOG_ARMOR,OW1_ROADHOG_SHIELDS]
    health_pool[heroID(Hero.SIGMA)] = [OW1_SIGMA_HEALTH,OW1_SIGMA_ARMOR,OW1_SIGMA_SHIELDS]
    health_pool[heroID(Hero.WINSTON)] = [OW1_WINSTON_HEALTH,OW1_WINSTON_ARMOR,OW1_WINSTON_SHIELDS]
    health_pool[heroID(Hero.ZARYA)] = [OW1_ZARYA_HEALTH,OW1_ZARYA_ARMOR,OW1_ZARYA_SHIELDS]

rule "[echo.opy]: Detect Echo initialization":
    @Event eachPlayer
    @Hero echo
    @Condition eventPlayer.initialized == false # without this flag, the reset code in generic.opy executes after initialization

    initEcho()
    eventPlayer.initialized = true


def initEcho():
    @Name "[echo.opy]: initEcho()"
    # [TODO]
    pass

rule "[echo.opy]: Deal OW1 echo focusing beam under 50% hp":
    @Event playerDealtDamage
    @Hero echo
    @Condition eventPlayer.isUsingAbility2()
    @Condition percent(victim.getHealth()/victim.getMaxHealth()) < OW1_ECHO_FOCUSING_BEAM_TRESHOLD 

    damage(victim, attacker, eventDamage*(OW1_ECHO_FOCUSING_BEAM_DMG/OW2_ECHO_FOCUSING_BEAM_DMG)-eventDamage)
    
rule "[echo.opy]: Set Life for echo when duplicating a tank":
    @Event eachPlayer
    @Hero echo
    @Condition eventPlayer.isDuplicatingAHero()
    @Condition eventPlayer.getHeroOfDuplication() in getTankHeroes()
    @Condition eventPlayer.getHeroOfDuplication() != Hero.DOOMFIST
    
    eventPlayer.hero_id_duplicated = heroID(eventPlayer.getHeroOfDuplication())
    clearCustomHealth()
    setCustomHealth(
        health_pool[eventPlayer.hero_id_duplicated][0],
        health_pool[eventPlayer.hero_id_duplicated][1],
        health_pool[eventPlayer.hero_id_duplicated][2],
    )

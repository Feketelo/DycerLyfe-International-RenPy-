# The script of the game goes in this file.

# Declare characters used by this game. The color argument colorizes the
# name of the character.

define m = Character("Me")
define c1 = Character("Customer1")
define intMoney = 0
define intTimer = 0
define intCustMood = 0
define intSwauveCheck = 0

# The game starts here.

label start:
    # Play music

    play music "audio/Neon Laser Horizon.mp3"


label round1:
    # Show a background.
    scene bg door_01

    # This shows a character sprite.
    show customer1 happy

    # This displays a line of dialogue followed by choices.
    $ intSwauve = renpy.random.randint(1, 100)
    menu:
        c1 "What do you want?"

        "Hello, how are you this evening?":
            $ intSwauveCheck = 100
            if (intSwauve <= intSwauveCheck):
                jump round1_response1
            else:
                jump round1_response1

        "May I take a moment of your time?":
            $ intSwauveCheck = 50
            if (intSwauve <= intSwauveCheck):
                jump round1_response2
            else:
                jump round1_response3
        
        "Buy my juicer!":
            $ intSwauveCheck = 100
            if (intSwauve <= intSwauveCheck):
                jump round1_response4
            else:
                jump round1_response5

#Round 1 Responses
label round1_response1:
    c1 "I'm fine, thank you."
    jump round2

label round1_response2:
    c1 "Sure, I have a moment."
    jump round2

label round1_response3:
    c1 "Make it quick, I have dinner on the stove."
    jump round2

label round1_response4:
    c1 "Hell yeah, I am SO thirsty!"
    jump round2

label round1_response5:
    c1 "What? No!"
    jump round2


# Round 2
label round2:
    $ intSwauve = renpy.random.randint(1, 100)
    menu:
        c1 "What is it?"

        "I'm here with the renowned DycerLyfe International brand 5-in-1 Ultimate Juicerator. It has won 3 industry awards just this year!":
            $ intSwauveCheck = 75
            if (intSwauve <= intSwauveCheck):
                jump round2_response1
            else:
                jump round2_response2

        "Let me demonstrate for you the juiceing power of the DycerLyfe International brand 5-in-1 Ultimate Juicerator on this fresh apple.":
            $ intSwauveCheck = 50
            if (intSwauve <= intSwauveCheck):
                jump round2_response3
            else:
                jump round2_response4
        
        "Give me your shoe. I'm going to juice it.":
            "*Whirring noises*"
            $ intSwauveCheck = 5
            if (intSwauve <= intSwauveCheck):
                jump round2_response5
            else:
                jump round2_response6

#Round 2 Responses
label round2_response1:
    c1 "But what can the Juicerator do for me?"
    jump end
label round2_response2:
    c1 "DycerLyfe? I don't know about all that."
    jump end
label round2_response3:
    c1 "That's some fresh-looking apple juice!"
    jump end
label round2_response4:
    c1 "I'm allergic to apples."
    jump end
label round2_response5:
    c1 "I didn't know my shoe had so much juice!"
    jump end
label round2_response6:
    c1 "I loved that shoe."
    jump end

label end:
    "Game Over"
    # This ends the game.
    return

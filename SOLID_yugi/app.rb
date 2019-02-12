class Deck
    attr_accessor :cards

    def initialize(args)
        @cards = args
    end

    def deck_content
        cards
    end
end

class Combos
    attr_accessor :cards

    def initialize(args)
        @cards = args
    end

    def combo_list
        cards
    end
end

class Play
    attr_accessor :cards

    def initialize(args)
        @cards = args
    end
    def shuffle_cards
        cards = cards.shuffle
    end

    def draw_card
    end

    def draw_cards(quantity=4)
        hand = []
        if quantity>0
            hand = deck[0..quantity-1]
        end
    end

    def return_card
    end
end

class HandGrade
    def hand_grades(loop)
    end

    def hand_grade
    end
end

class Hand
end

blueyes = "BLUE-EYES WHITE DRAGON"
    spirit = "DRAGON SPIRIT OF WHITE"
    cosmobrain = "COSMO BRAIN"
    hardened = "HARDENED ARMED DRAGON"
    arkbrave = "ARKBRAVE DRAGON"
    eset = "HIERATIC DRAGON OF ESET"
    paladinof = "PALADIN OF FELGRAND"
    peten = "PETEN THE DARK CLOWN"
    dkcreation = "DRAGON KNIGHT OF CREATION"

    silvercry = "SILVER'S CRY"
    doomed = "OFFERINGS TO THE DOOMED"

    tthole = "TREACHEROUS TRAP HOLE"
    mebug = "MAN EATER BUG"
    
bright = "BIRTH RIGHT"


pandora_be = [blueyes, blueyes, blueyes, 
                peten, peten, peten, 
                spirit, spirit,  
                arkbrave, 
                paladinof, paladinof, paladinof,
                eset, eset,
                silvercry,
                doomed, doomed,
                tthole,
                bright,
                bright
]

core_combos = [[blueyes, cosmobrain], [spirit, cosmobrain], [blueyes, cosmobrain, eset], [spirit, cosmobrain, eset], [blueyes, cosmobrain, paladinof], [spirit, cosmobrain, paladinof]]
sub_core_combos = [[paladinof, bright], [paladinof, silvercry]]
staples = [[tthole], [doomed], [peten]]

all_combos = core_combos + sub_core_combos + staples

deck = Deck.new(pandora_be).deck_content

combo = Combos.new(all_combos).combo_list

play = deck.shuffle
hand = []
hand = play[0..4]
grade = 0
i = 0
grade0 = 0
grade1 = 0
grade2 = 0
grade3 = 0
grade4 = 0
over9000 = 0

while i < 10000
    grade = 0
    play = deck.shuffle
    hand = play[0..5]
    hand = hand.push(cosmobrain)
    i = i+1
    all_combos.each do |combo|
        if (combo - hand) == []
            grade = grade+1
        end
    end
    p hand
    p grade
    if grade == 0
        grade0 +=1
    elsif grade == 1
        grade1 += 1
    elsif grade == 2
        grade2 += 1
    elsif grade == 3
        grade3 += 1
    elsif grade == 4
        grade4 += 1
    else
        over9000 +=1
    end
end

p "grade0: "
p grade0
p "grade1: "
p grade1
p "grade2: "
p grade2
p "grade3: "
p grade3
p "grade4: "
p grade4
p "over9000: "
p over9000







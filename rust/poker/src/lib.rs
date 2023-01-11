/// Given a list of poker hands, return a list of those hands which win.
///
/// Note the type signature: this function should return _the same_ reference to
/// the winning hand(s) as were passed in, not reconstructed strings which happen to be equal.
pub fn winning_hands<'a>(hands: &[&'a str]) -> Vec<&'a str> {
    // let splits = hands.iter()
        // .map(|&hs| hs.clone().split(' '));
    // for hand in splits {
        // println!{"Hand"};
        // for card in hand {
            // print!("{}", card);
        // }
        // println!{""};
    // }
    unimplemented!("Out of {:?}, which hand wins?", hands)
}

/*
Straight flush** 	Jack of clubs10 of clubs9 of clubs8 of clubs7 of clubs
Four of a kind 	5 of clubs5 of diamonds5 of hearts5 of spades2 of diamonds
Full house 	6 of spades6 of hearts6 of diamondsKing of clubsKing of hearts
Flush** 	Jack of diamonds9 of diamonds8 of diamonds4 of diamonds3 of diamonds
Straight** 	10 of diamonds9 of spades8 of hearts7 of diamonds6 of clubs
Three of a kind 	Queen of clubsQueen of spadesQueen of hearts9 of hearts2 of spades
Two pair 	Jack of heartsJack of spades3 of clubs3 of spades2 of hearts
One pair 	10 of spades10 of hearts8 of spades7 of hearts4 of clubs
High card 	King of diamondsQueen of diamonds7 of spades4 of spades3 of hearts
*/
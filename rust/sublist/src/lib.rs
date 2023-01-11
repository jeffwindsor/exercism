#[derive(Debug, PartialEq, Eq)]
pub enum Comparison {
    Equal,
    Sublist,
    Superlist,
    Unequal,
    None
}

pub fn sublist<T: PartialEq>(_first_list: &[T], _second_list: &[T]) -> Comparison {
    let fl = _first_list.len();
    let sl = _second_list.len();
    
    if _first_list == _second_list { Comparison::Equal }
    else if _first_list  == []     { Comparison::Sublist }
    else if _second_list == []     { Comparison::Superlist }
    else if fl < sl {
        sublist_rec(_first_list, _second_list, 0, fl) 
    }
    else {
        match sublist_rec(_second_list, _first_list, 0, sl) {
            Comparison::Sublist => Comparison::Superlist,
            c => c
        }
    }
}

pub fn sublist_rec<T: PartialEq>(a: &[T], b: &[T], start: usize, end: usize) -> Comparison {
    if end > b.len()             { Comparison::Unequal }
    else if a == &b[start..end]  { Comparison::Sublist }
    else { sublist_rec(a,b,start+1,end+1) }
}
pub struct Allergies{ 
    score: u32 
}

#[derive(Debug, PartialEq, Eq, Copy, Clone)]
pub enum Allergen {
    Eggs = 0,
    Peanuts,
    Shellfish,
    Strawberries,
    Tomatoes,
    Chocolate,
    Pollen,
    Cats,
}

impl Allergies {
    pub fn new(score: u32) -> Self {
        Allergies{ score }
    }

    pub fn is_allergic_to(&self, allergen: &Allergen) -> bool {
        let index = *allergen as u32;
        self.score & (1 << index) != 0
    }

    

    pub fn allergies(&self) -> Vec<Allergen> {
        let mut result = Vec::new();
        if self.is_allergic_to(&Allergen::Eggs) { result.push(Allergen::Eggs)};
        if self.is_allergic_to(&Allergen::Peanuts) { result.push(Allergen::Peanuts)};
        if self.is_allergic_to(&Allergen::Shellfish) { result.push(Allergen::Shellfish)};
        if self.is_allergic_to(&Allergen::Strawberries) { result.push(Allergen::Strawberries)};
        if self.is_allergic_to(&Allergen::Tomatoes) { result.push(Allergen::Tomatoes)};
        if self.is_allergic_to(&Allergen::Chocolate) { result.push(Allergen::Chocolate)};
        if self.is_allergic_to(&Allergen::Pollen) { result.push(Allergen::Pollen)};
        if self.is_allergic_to(&Allergen::Cats) { result.push(Allergen::Cats)};
        
        result
    }
}

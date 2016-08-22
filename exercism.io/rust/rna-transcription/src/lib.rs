#[derive(PartialEq, Debug)]
pub struct RibonucleicAcid {
    string: String
}

impl RibonucleicAcid {
    pub fn new(str1: &str) -> RibonucleicAcid {
        RibonucleicAcid { string: String::from(str1) }
    }
}

pub struct DeoxyribonucleicAcid {
    string: String
}

impl DeoxyribonucleicAcid {
    pub fn new(str1: &str) -> DeoxyribonucleicAcid {
        DeoxyribonucleicAcid { string: String::from(str1) }
    }

    pub fn to_rna(&self) -> RibonucleicAcid {
        let rna_str = self.string.chars()
            .filter_map(|x| match x {
                'G' => Some('C'),
                'C' => Some('G'),
                'T' => Some('A'),
                'A' => Some('U'),
                 _  => None})
            .collect::<String>();
        RibonucleicAcid::new(&rna_str)
    }
}

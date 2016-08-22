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
        let rna_str: String = self.string.chars()
            .map(|x| match x {'G' => 'C', 'C' => 'G', 'T' => 'A', 'A' => 'U',
                              _ => 'X'})
            .collect();
        RibonucleicAcid::new(&rna_str)
    }
}

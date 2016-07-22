use std::collections::HashMap;

const NUCLEOTIDES: [char; 4] = ['A', 'T', 'C', 'G'];

pub fn nucleotide_counts(dna_str: &str) -> HashMap<char, usize> {
    NUCLEOTIDES.iter().map(|c| (*c, count(*c, dna_str))).collect()
}

pub fn count(nucleotide: char, dna_str: &str) -> usize {
    dna_str.chars().filter(|&c| c == nucleotide).count()
}

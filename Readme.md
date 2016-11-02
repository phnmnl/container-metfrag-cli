
![Logo](metfrag_logo.png)

# MetFrag-CLI
Version: 0.2

## Short Description

Command Line Interface for MetFrag.

## Description

MetFrag is a freely available software for the annotation of high precision tandem mass spectra of metabolites which is a first and critical step for the identification of a molecule's structure. Candidate molecules of different databases are fragmented in silico and matched against mass to charge values. A score calculated using the fragment peak matches gives hints to the quality of the candidate spectrum assignment.

## Key features

- Annotation of fragments

## Functionality

- Annotation / MS-MS / MS2
- Fragments

## Approaches

- Metabolomics / Targeted
  
## Instrument Data Types

- LC/MS
- MS-MS / MS2

## Tool Authors

- Christoph Ruttkies, IPB-Halle

## Container Contributors

- [Kristian Peters](https://github.com/korseby) (IPB-Halle)

## Website

- https://c-ruttkies.github.io/MetFrag/


## Git Repository

- https://github.com/c-ruttkies

## Installation 

For local individual installation:

```bash
docker pull docker-registry.phenomenal-h2020.eu/phnmnl/metfrag-cli
```

## Usage Instructions

For direct docker usage:

```bash
docker run --volume=$PWD:/mnt:rw -i -t docker-registry.phenomenal-h2020.eu/phnmnl/metfrag-cli PeakListPath=/mnt/Training-048.txt MetFragDatabaseType=PubChem IonizedPrecursorMass=345.0874 DatabaseSearchRelativeMassDeviation=5 FragmentPeakMatchAbsoluteMassDeviation=0.001 FragmentPeakMatchRelativeMassDeviation=5 PrecursorIonMode=-1 IsPositiveIonMode=FALSE MetFragScoreTypes=FragmenterScore MetFragScoreWeights=1.0 MetFragCandidateWriter=CSV SampleName=Training-048 ResultsPath=/mnt MaximumTreeDepth=1 MetFragPreProcessingCandidateFilter=UnconnectedCompoundFilter 
```

## Publications

<!-- Guidance:
Use AMA style publications as a list (you can export AMA from PubMed, on the Formats: Citation link when looking at the entry).
IMPORTANT: Publications sectio must be placed at the end and cannot be emptied!
-->

- Ruttkies C, Schymanski EL, Wolf S, Hollender J, Neumann S. MetFrag relaunched: incorporating strategies beyond in silico fragmentation. Journal of Cheminformatics. 2016;8:3. doi:10.1186/s13321-016-0115-9.

**Below, I've copied (part of) the text from RW Doerge's email on April 2, 2019. It includes all of the reviewers' comments.** Presumably, reviewer 1 means "mixed" model (not mixture). It looks like reviewer 1 suggests that we specify which data structure (from Jiang & Zeng 1995) we use. I'll double-check Jiang & Zeng's article before making this addition. I might need to clarify that our bootstrapping strategy is the same as Jianan's (in her 2016 paper). 

Reviewer 2 has a more substantial list of suggested changes.






## Reviewer comments: 

Reviewer #1 (Comments for the Authors (Required)): 

This is an interesting paper. Although the method is an improvement upon the previous works, it has quite a few new features: multiple alleles, mixture model and bootstrap resampling for estimating the null distribution. The paper is generally well written. The methodology presentation is succinct and up-to-point. 

Data structure: There are two data structures for this kind of analysis and test, Design I and II in terms of the terminology in Jiang and Zeng (1995): Design I refers to two traits in one population, same G and different P; Design II refers to two traits in two populations, different G and different P. Theoretically the same test can be applied to the both data structures. The situation considered here is Design I. *There is a need to point this out in the paper.* 

I like to the idea of plotting the test information in terms of the traces. It is relatively simpler and informative. 

Simulation is informative, particularly on the null. 

For the real data analysis, the result for two separate QTL for percent time in light and hot plate latency seems to be there although weak, particularly considering that the line-effect contribution patterns for the two traits are different in the regions. 

The discussion is informative, particularly in relation to other related studies. 




Reviewer #2 (Comments for the Authors (Required)): 

Boehm et al. described a new procedure to test pleiotropy versus separate QTL in a multi-parent population with a set of founder alleles. Authors made genuine effort to investigate this long-standing challenge. In addition, authors produced a R package for users. I think it would benefit the research community. I commend the continued contribution from this group. The manuscript is well written, with a good balance of theoretical consideration, simulation, and empirical testing. 

I have a few comments for consideration. 
1. Please considering showing example plots of LOD profiles for simulation cases where separate QTL are detected; where evidence is not significant to declare separate QTL; and two other types when a single QTL was simulated. It would okay to just show the small allele effects difference and uneven allle partitioning. 

2. I also suggest authors to add a statement about 2 or 3 cM (reading from Figure 1), which may be more common. This can also be related to the linkage map studies including the one the corresponding authors published many years ago. Some statements in introduction or discussion would be good to have to indicate that the resolution to resolve distinct QTL is determined by the biological information contained in the data (sample size, marker number, number of recombination, effect size, and allele frequency). Too often, biologists mistakenly hope "powerful" statistics would solve all the issues. In this case, not being able to reject H0: lamda1 = lamda2 could be due to the tight linkage (2-2.5 cM apart). 

3. Is it possible to produce a correlation plot after removing effects from other parts of the genome? This would be a good one to show. 

4. For the application case, I understand that it is not easy to find an ideal case to demonstrate the method. But I am not sure I can follow the reasoning in this case. With 1.2 as the likelihood ratio test and 0.11 as the p-value for bootstrap, there is no adequate evidence to reject lamda 1 = lamda 2, or "weak evidence for distinct QTL for the two traits". In Abstract and Introduction, this becomes "evidence for presence of two distinct loci" and "modest evidence for distinct QTL". Also, in using the QTL effect profiles in Figure 3 (L201-204), authors assumed allele effects of the pleiotropy QTL follow the similar direction for both traits, which is another complication. For example, could it be the case that the allele contrast WSB-NOD determine Trait 1 but the allele contrast 129-B6 determines Trait 2? I think it is okay to say individual QTL mapping indicates two distinct QTL, but there is no adequate evidence to declare two QTL in this case, even though this is a case authors wanted to show the power of the new method. 

Minor comments: 
1. For all figures, please consider revising the lines and symbols so that they can still be viewed when printed in gray. 
2. Please correct the Figure 3 legends. It appears to be a copy of Figure 2. 
3. Figure 4. Please correct the symbols in the insert legend. It is not clear to me what we should be looking for in this plot, the LOD for y-axis but last statement in legend. 
4. Please add lamda somewhere before Equation 8. Lamda1 = Lamda2 = Lamda? 
5. Please check Figure 3 QTL effect. Not sure why they (8 founder alleles) are all positive, in contrast to ?. 
6. It may help if some previous simulation studies about QTL mapping resolution are cited to help readers to understand the complexity of this issue. For example, detecting repulsion-linked QTL. 
7. Please revise L200. Make a statement and then (Figure 2). This helps readers. 
8. Please make it clear the LOD presented was from (8)-(11), but the significance was determined by Bootstrap. Should authors indicate the significance in plots? 

---
layout: default_sparse
title: Submit your Paper
permalink: /authors/submit-your-paper/
---



<p><strong>The submission system for {{site.short-title}} papers is open at:</strong></p>
<p align="center"><strong><a href="{{site.cmt-url}}">{{site.cmt-url}}</a></strong></p>

<!-- <p>Please refer to the <a href="../../workshops/index.html">workshops page</a> for workshop paper submission instructions.</p> -->

<hr class="wp-block-separator" />

<p>Paper submission and registration are handled via the <a rel="noreferrer noopener" aria-label=" (opens in a new tab)" href="{{site.cmt-url}}" target="_blank">Conference Management Toolkit (CMT)</a>. Paper registration is performed by registering as a user with CMT and entering a paper title and abstract. This will result in the allocation of a “paper ID”, which indicates registration is completed and should be used in preparation of the review copy. You will be able to make edits and upload new paper drafts until the final deadline. Submitted papers should be prepared according to the published specification for formatting and style. Please be sure to read both the formatting instructions and policies before submission.</p>

<p style="text-align: center;"><a class="btn btn-primary" role="button" href="{{site.cmt-url}}">Submit your Paper via CMT!</a></p>

<div class="alert mt-3 alert-info" style="">

{% include important_changes.html %}

</div>

<h3>Formatting your paper</h3>

A complete paper should be submitted in according to the formatting style ([please see below under typesetting]({{site.baseurl}}{% link authors/submit-your-paper.md %}#typesetting)). The length should not exceed 9 pages excluding the references; any in-paper appendices must precede the reference list.

### Submitted paper (for review)

Papers submitted for review should be anonymous and instead include the paper ID as allocated by CMT upon registration of the paper. The addition of line numbers (automatic in the PDFLaTeX template) should be included, in order to facilitate the review process.

**Page limit:** A complete paper should be submitted in according to the [formatting style]({{site.baseurl}}{% link authors/submit-your-paper.md %}#typesetting). **The length of papers submitted for stage one review should not exceed 9 pages excluding the references.** All appendices must be counted within the 9 pages limit or supplied as supplementary material. The revised paper for stage two review should not exceed 10 pages excluding the references (an additional page to accomodate revisions).

### Paper policies

By submitting a manuscript to BMVC, the authors guarantee that it has not been previously published (or accepted for publication) in substantially similar form. Furthermore, no paper which contains significant overlap with the contributions of this paper either is under review at the moment of submission or will be submitted during the {{short-title}} review period to any of the following: another conference, a workshop, or a journal. The authors also attest that they did not submit substantially similar submissions to {{site.short-title}}. Violation of any of these conditions will lead to rejection.

<h3>Dual submission</h3>

<p>A publication, for the purposes of this policy, is defined to be a written work longer than four pages (excluding references) that was submitted for review by peers for either acceptance or rejection, and, after review, was accepted and appeared in a formal proceedings. This definition does not consider an arXiv.org or university technical report as a publication. Please see the entry on the <a title="FAQ" href="{{ site.baseurl }}{% link authors/faq.md %}">FAQ</a> for further details.</p>

<p style="text-align: center;"><a class="btn btn-primary" role="button" href="{{site.baseurl}}{% link authors/faq.md %}">Please check the FAQ!</a></p>

<h3>Author&#8217;s responsibilities</h3>

<p>If there are papers that may appear to violate any of these conditions, it is the authors’ responsibility to</p>

<ol>
<li>Cite these papers (preserving anonymity)</li>
<li>Argue in the body of your paper why your BMVC paper is non trivially different from these concurrent submissions</li>
<li>Include anonymized versions of those papers in the supplemental material</li>
</ol>

<p><strong>Conflict responsibilities:</strong> It is the primary author's responsibility to ensure that <strong>all authors</strong> on their paper have registered on CMT and entered their institutional domain conflicts into the CMT system. If a paper is found to have an undeclared or incorrect institutional conflict, the paper may be summarily rejected. <strong>To avoid undeclared conflicts, the author list is considered to be final after the submission deadline and no changes are allowed for accepted papers.</strong> If you are uncertain of how to enter domain conflicts please see the entry on the <a title="FAQ" href="{{ site.baseurl }}{% link authors/faq.md %}">FAQ</a>.
</p>



<!--<p><strong>Entering Domain Conflicts:</strong></p>-->




<p><strong>Double blind review:</strong> The reviewing process for BMVC is double blind (in keeping with the standard for international computer vision conferences). 
This means that authors do not know the names of the area chair/reviewers of their papers, and the area chairs/reviewers cannot, beyond reasonable doubt, infer the names of the authors from the submission and the additional material. To this end please:</p>
<ul>
<li>Avoid providing information that may identify the authors in the acknowledgments (e.g., co-workers and grant IDs) and in the supplemental material (e.g., titles in the movies, or attached papers)</li>
<li>Avoid providing links to websites that identify the authors</li>
<li>Avoid direct promotion (e.g., press release or social media) of the paper to the public that would seek to inform potential reviewers of the authors (please see the <a title="FAQ" href="{{ site.baseurl }}{% link authors/faq.md %}">FAQ</a> for further clarification)</li>
</ul>

<p>Violation of any of these guidelines may lead to rejection without review. If you need to cite a different paper of yours that is being submitted concurrently to BMVC, the authors should (1) cite these papers; (2) argue in the body of your paper why your paper is non trivially different from these concurrent submissions; and (3) include anonymized versions of those papers in the supplemental material. 
</p>

<p>
<strong>Availability for review:</strong> As per the call for papers, in keeping with conferences in the field (e.g. <a href="https://medium.com/@NeurIPSConf/getting-started-with-neurips-2020-e350f9b39c28">NeurIPS</a>) and to cope with the increasing number of submissions, we ask that all authors be prepared to review papers and make use of a compulsory abstract submission deadline a week before the paper submission deadline. The CMT submission site will ask authors to acknowledge this commitment and failure to engage with the reviewing process might be grounds for rejection.
</p>
<p>
Our expectation is that the majority of authors should make themselves available as reviewers. At the time of abstract submission on CMT (a week before the paper deadline) the author list should be entered on CMT and an option will be available for authors to indicate which authors will be able to review - requests for certain authors to not be considered as reviewers can also be entered with a suitable justification. For example, junior researchers (e.g. early PhD and below) or authors who are not computer vision researchers (e.g. providing domain expertise for experiments) would be considered reasonable justification.
</p>

<p>
<strong>Publicity, social media:</strong> Papers submitted to BMVC should not be discussed with the press until they have been officially accepted for publication. Work explicitly identified as a BMVC submission also may not be advertised on social media. Please see the <a title="FAQ" href="{{ site.baseurl }}{% link authors/faq.md %}">FAQ</a> for more details. Violations may result in the paper being rejected or removed from the conference and proceedings.
</p>



<p>
<strong>FAQ:</strong> Further details and answers to additional questions are available on the author <a title="FAQ" href="{{ site.baseurl }}{% link authors/faq.md %}">FAQ</a> page.
</p>

### Typesetting

<p>Typesetting should be done using the **PDFLaTeX system** (part of all modern LaTeX distributions). However, in exceptional circumstances, submissions prepared in Microsoft Word or OpenOffice may be accepted but it is the authors responsibility to use the template appropriately and match as closely to the PDFLaTeX system as possible. </p>

<p>Paper templates, along with example PDF outputs are available for download through GitHub: <a href="https://github.com/BritishMachineVisionAssociation/BMVCTemplate">https://github.com/BritishMachineVisionAssociation/BMVCTemplate</a>. </p>

<p>Instructions on how to use the BMVC LaTeX template are described in the README.md file within the repository. To enable review mode in the LaTeX template, the <code>\bmvcreviewcopy{??}</code> command should be used, where <code>??</code> is your assigned paper number.</p>

<p>For the camera ready copy the <code>\bmvcreviewcopy{??}</code> command should be removed.</p>

<p></p>

<h3>Supplementary material</h3>

<p>Authors may optionally upload supplementary material, which may include:</p>

<ul>
<li>Videos to showcase results/demo of the proposed approach/system</li>
<li>Images and other results in addition to the ones in the paper</li>
<li>Anonymised related submissions to other conferences and journals</li>
<li>Appendices or technical reports containing extended proofs and mathematical derivations that are not essential to the understanding of the submitted paper</li>
</ul>

<p><strong>Supplementary material should be uploaded as a single ZIP file (up to 100MB) to the CMT website.</strong></p>

The authors should refer to the contents of the supplementary material appropriately in the paper. Note that reviewers will be encouraged to look at it, but are not obligated to do so. Supplementary material is to be submitted by the [supplemental material deadline]({{site.baseurl}}{% link dates.md %}).






<h3>Final camera ready copy (for accepted papers)</h3>

<p>Camera-ready submission for accepted papers will be open via <a rel="noreferrer noopener" aria-label=" (opens in a new tab)" href="{{site.cmt-url}}" target="_blank">CMT</a> ({{site.cmt-url}}). All papers will require one author to pay a registration fee, which we hope to be < 100 GBP per paper. This will cover the costs of hosting and streaming the conference. This will also help keep a low general registration fee, maximising participation and also dissemination. Details will be emailed directly to authors of accepted papers.
One registration is required per accepted paper; that is, for any two papers at least two registrations are required irrespective of shared authorship. Papers for which we have no registered authors will be removed from the conference. For each accepted paper authors should upload:</p>

<ul>
<li>Final camera-ready paper (in PDF format)</li>
<li>Optional supplementary materials (ZIP file up to 100MB)</li>
</ul>

<p>The name of your submission file must be
of the form XXXX.pdf where XXXX is the four-digit paper ID (zero-padded
if necessary). For example, if your paper ID is 24, the filename must be
0024.pdf. If you upload supplementary materials please name them as XXXX_supp.zip where XXXX is the four-digit paper ID (zero-padded
if necessary).</p>

<p>You are permitted one extra page in the camera ready copy to take into account the reviewer’s comments. This means the length of the camera ready copy should not exceed 10 pages excluding the references and any acknowledgements. <strong>All</strong> appendices must be counted within the 10 pages limit or supplied as supplementary material.</p>



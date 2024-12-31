#set page(
	paper: "a4",
	numbering: "-1/1-"
)

#let c = counter("jou_no")
#let jou(title, it) = block[
	#c.step()
	( #title ) \
	第#context c.display()条
	#it
]

#set text(
	font: "IPAexMincho"
)

#set heading(numbering: "第1章")

#show heading: it => [
  #set text(font: "IPAexGothic")
	#context {counter(heading).display()} 
  #it.body
]

#align(center, text(24pt)[
	*定款案*
]) 

= 総則

#jou("名称", [
	この法人は、特定非営利活動法人Klefと称する。
])

#jou("事務所", [
	この法人は、主たる事務所を大阪府大阪市に置く。
])

= 目的及び事業

#jou("目的", [
	この法人は、学生を中心とする市民一般に対し、創作及びものづくりを通して自分らしさを表現することを支援する事業を行い、性別や障がいの有無を問わず、誰もが自分らしくいられる社会の形成に寄与することを目的とする。
])

#jou("特定非営利活動の種類", [
	この法人は、その目的を達成するため、次に掲げる種類の特定非営利活動を行う。\
	(1) 男女共同参画社会の形成の促進を図る活動 \
	(2) 情報化社会の発展を図る活動 \
	(3) 学術、文化、芸術又はスポーツの振興を図る活動 \
])

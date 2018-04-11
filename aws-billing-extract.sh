#!/bin/bash
# Version 3

function pivotable_UsageType()
{
	FILE_IN="$1"
	FILE_OUT="$2"

	#Valor está no UnBlendedCost campo 21
	# valor chave resourceId - Campo 22

	cat "$FILE_IN" | sed 's/"//g' > table
	head -n1 table > "$FILE_OUT"

	awk 'BEGIN {FS=OFS=";"} \
	NR>1 \
	{a0[$10]+=$21} \
	{a1[$10]=$1} \
	{a2[$10]=$2} \
	{a3[$10]=$3} \
	{a4[$10]=$4} \
	{a5[$10]=$5} \
	{a6[$10]=$6} \
	{a7[$10]=$7} \
	{a8[$10]=$8} \
	{a9[$10]=$9} \
	{a10[$10]=$10} \
	{a11[$10]=$11} \
	{a12[$10]=$12} \
	{a13[$10]=$13} \
	{a14[$10]=$14} \
	{a15[$10]=$15} \
	{a16[$10]=$16} \
	{a17[$10]=$17} \
	{a18[$10]=$18} \
	{a19[$10]=$19} \
	{a20[$10]=$20} \
	{a21[$10]=$21} \
	{a22[$10]=$22} \
	{a23[$10]=$23} \
	{a24[$10]=$24} \
	{a25[$10]=$25} \
	{a26[$10]=$26} \
	{a27[$10]=$27} \
	{a28[$10]=$28} \
	{a29[$10]=$29} \
	{a30[$10]=$30} \
	{a31[$10]=$31} \
	{a32[$10]=$32} \

	END {for (i in a0) {print a1[i],a2[i],a3[i],a4[i],a5[i],a6[i],a7[i],a8[i],a9[i],a10[i],a11[i],a12[i],a13[i],a14[i],a15[i],a16[i],a17[i],a18[i],a19[i],a20[i],a21[i],a22[i],a23[i],a24[i],a25[i],a26[i],a27[i],a28[i],a29[i],a30[i],a31[i],a32[i],a0[i] }}' table >> "$FILE_OUT"
}

function pivotableOld()
{
	FILE_IN="$1"
	FILE_OUT="$2"

	#Valor está no UnBlendedCost campo 21
	# valor chave resourceId - Campo 22

	cat "$FILE_IN" | sed 's/"//g' > table
	HEADER=$(head -n1 table)
	#head -n1 table > "$FILE_OUT"
	echo "${HEADER};TOTAL" > "$FILE_OUT"

	awk 'BEGIN {FS=OFS=";"} \
	NR>1 \
	{a0[$22]+=$21} \
	{a1[$22]=$1} \
	{a2[$22]=$2} \
	{a3[$22]=$3} \
	{a4[$22]=$4} \
	{a5[$22]=$5} \
	{a6[$22]=$6} \
	{a7[$22]=$7} \
	{a8[$22]=$8} \
	{a9[$22]=$9} \
	{a10[$22]=$10} \
	{a11[$22]=$11} \
	{a12[$22]=$12} \
	{a13[$22]=$13} \
	{a14[$22]=$14} \
	{a15[$22]=$15} \
	{a16[$22]=$16} \
	{a17[$22]=$17} \
	{a18[$22]=$18} \
	{a19[$22]=$19} \
	{a20[$22]=$20} \
	{a21[$22]=$21} \
	{a22[$22]=$22} \
	{a23[$22]=$23} \
	{a24[$22]=$24} \
	{a25[$22]=$25} \
	{a26[$22]=$26} \
	{a27[$22]=$27} \
	{a28[$22]=$28} \
	{a29[$22]=$29} \
	{a30[$22]=$30} \
	{a31[$22]=$31} \
	{a32[$22]=$32} \

	END {for (i in a0) {print a1[i],a2[i],a3[i],a4[i],a5[i],a6[i],a7[i],a8[i],a9[i],a10[i],a11[i],a12[i],a13[i],a14[i],a15[i],a16[i],a17[i],a18[i],a19[i],a20[i],a21[i],a22[i],a23[i],a24[i],a25[i],a26[i],a27[i],a28[i],a29[i],a30[i],a31[i],a32[i],a0[i] }}' table >> "$FILE_OUT"
}

function pivotable()
{
	FILE_IN="$1"
	FILE_OUT="$2"
	NEW_FIELD="$3"

	#Valor está no UnBlendedCost campo 21
	# valor chave resourceId - Campo 22

	cat "$FILE_IN" | sed 's/"//g' > table
	HEADER=$(head -n1 table)
	#head -n1 table > "$FILE_OUT"
	echo "${HEADER};TOTAL;TYPE" > "$FILE_OUT"

	awk -v FIELD="$NEW_FIELD" 'BEGIN {FS=OFS=";"} \
	NR>1 \
	{a0[$22]+=$21} \
	{a1[$22]=$1} \
	{a2[$22]=$2} \
	{a3[$22]=$3} \
	{a4[$22]=$4} \
	{a5[$22]=$5} \
	{a6[$22]=$6} \
	{a7[$22]=$7} \
	{a8[$22]=$8} \
	{a9[$22]=$9} \
	{a10[$22]=$10} \
	{a11[$22]=$11} \
	{a12[$22]=$12} \
	{a13[$22]=$13} \
	{a14[$22]=$14} \
	{a15[$22]=$15} \
	{a16[$22]=$16} \
	{a17[$22]=$17} \
	{a18[$22]=$18} \
	{a19[$22]=$19} \
	{a20[$22]=$20} \
	{a21[$22]=$21} \
	{a22[$22]=$22} \
	{a23[$22]=$23} \
	{a24[$22]=$24} \
	{a25[$22]=$25} \
	{a26[$22]=$26} \
	{a27[$22]=$27} \
	{a28[$22]=$28} \
	{a29[$22]=$29} \
	{a30[$22]=$30} \
	{a31[$22]=$31} \
	{a32[$22]=$32} \

	END {for (i in a0) {print a1[i],a2[i],a3[i],a4[i],a5[i],a6[i],a7[i],a8[i],a9[i],a10[i],a11[i],a12[i],a13[i],a14[i],a15[i],a16[i],a17[i],a18[i],a19[i],a20[i],a21[i],a22[i],a23[i],a24[i],a25[i],a26[i],a27[i],a28[i],a29[i],a30[i],a31[i],a32[i],a0[i],FIELD }}' table >> "$FILE_OUT"
}

function pivotable2()
{
	FILE_IN="$1"
	FILE_OUT="$2"
	NEW_FIELD="$3"

	#Valor está no UnBlendedCost campo 21
	# valor chave resourceId - Campo 22

	cat "$FILE_IN" | sed 's/"//g' > table
	HEADER=$(head -n1 table)
	#head -n1 table > "$FILE_OUT"
	echo "${HEADER};TOTAL_B;TOTAL_U;QTD;TYPE;SUBTYPE" > "$FILE_OUT"

	awk -v FIELD="$NEW_FIELD" 'BEGIN {FS=OFS=";"} \
	NR>1 \
	{Blended[$22]+=$19} \
	{UnBlended[$22]+=$21} \
	{QTD[$22]+=$17} \
	{a1[$22]=$1} \
	{a2[$22]=$2} \
	{a3[$22]=$3} \
	{a4[$22]=$4} \
	{a5[$22]=$5} \
	{a6[$22]=$6} \
	{a7[$22]=$7} \
	{a8[$22]=$8} \
	{a9[$22]=$9} \
	{a10[$22]=$10} \
	{a11[$22]=$11} \
	{a12[$22]=$12} \
	{a13[$22]=$13} \
	{a14[$22]=$14} \
	{a15[$22]=$15} \
	{a16[$22]=$16} \
	{a17[$22]=$17} \
	{a18[$22]=$18} \
	{a19[$22]=$19} \
	{a20[$22]=$20} \
	{a21[$22]=$21} \
	{a22[$22]=$22} \
	{a23[$22]=$23} \
	{a24[$22]=$24} \
	{a25[$22]=$25} \
	{a26[$22]=$26} \
	{a27[$22]=$27} \
	{a28[$22]=$28} \
	{a29[$22]=$29} \
	{a30[$22]=$30} \
	{a31[$22]=$31} \
	{a32[$22]=$32} \

	END {for (i in Blended) {print a1[i],a2[i],a3[i],a4[i],a5[i],a6[i],a7[i],a8[i],a9[i],a10[i],a11[i],a12[i],a13[i],a14[i],a15[i],a16[i],a17[i],a18[i],a19[i],a20[i],a21[i],a22[i],a23[i],a24[i],a25[i],a26[i],a27[i],a28[i],a29[i],a30[i],a31[i],a32[i],Blended[i],UnBlended[i],QTD[i],FIELD }}' table >> "$FILE_OUT"
}

function pivotableSum()
{
	FILE_IN="$1"
	FILE_OUT="$2"
	NEW_FIELD="$3"

	#Valor está no UnBlendedCost campo 21
	# valor chave resourceId - Campo 22

	cat "$FILE_IN" | sed 's/"//g' > table
	HEADER=$(head -n1 table)
	#head -n1 table > "$FILE_OUT"
	echo "${HEADER};TOTAL;TYPE" > "$FILE_OUT"

	awk -v FIELD="$NEW_FIELD" 'BEGIN {FS=OFS=";"} \
	NR>1 \
	{a0[$22]+=$33} \
	{a1[$22]=$1} \
	{a2[$22]=$2} \
	{a3[$22]=$3} \
	{a4[$22]=$4} \
	{a5[$22]=$5} \
	{a6[$22]=$6} \
	{a7[$22]=$7} \
	{a8[$22]=$8} \
	{a9[$22]=$9} \
	{a10[$22]=$10} \
	{a11[$22]=$11} \
	{a12[$22]=$12} \
	{a13[$22]=$13} \
	{a14[$22]=$14} \
	{a15[$22]=$15} \
	{a16[$22]=$16} \
	{a17[$22]=$17} \
	{a18[$22]=$18} \
	{a19[$22]=$19} \
	{a20[$22]=$20} \
	{a21[$22]=$21} \
	{a22[$22]=$22} \
	{a23[$22]=$23} \
	{a24[$22]=$24} \
	{a25[$22]=$25} \
	{a26[$22]=$26} \
	{a27[$22]=$27} \
	{a28[$22]=$28} \
	{a29[$22]=$29} \
	{a30[$22]=$30} \
	{a31[$22]=$31} \
	{a32[$22]=$32} \
	{a33[$22]=$33} \
	{a34[$22]=$34} \


	END {for (i in a0) {print a1[i],a2[i],a3[i],a4[i],a5[i],a6[i],a7[i],a8[i],a9[i],a10[i],a11[i],a12[i],a13[i],a14[i],a15[i],a16[i],a17[i],a18[i],a19[i],a20[i],a21[i],a22[i],a23[i],a24[i],a25[i],a26[i],a27[i],a28[i],a29[i],a30[i],a31[i],a32[i],a0[i],a34[i],FIELD }}' table >> "$FILE_OUT"
}

function pivotableSum2()
{
	FILE_IN="$1"
	FILE_OUT="$2"
	NEW_FIELD="$3"

	#Valor está no UnBlendedCost campo 21
	# valor chave resourceId - Campo 22

	cat "$FILE_IN" | sed 's/"//g' > table
	HEADER=$(head -n1 table)
	#head -n1 table > "$FILE_OUT"
	echo "${HEADER};TOTAL_B;TOTAL_U;TYPE" > "$FILE_OUT"

	awk -v FIELD="$NEW_FIELD" 'BEGIN {FS=OFS=";"} \
	NR>1 \
	{Blended[$22]+=$33} \
	{UnBlended[$22]+=$34} \
	{QTD[$22]+=$35} \
	{a1[$22]=$1} \
	{a2[$22]=$2} \
	{a3[$22]=$3} \
	{a4[$22]=$4} \
	{a5[$22]=$5} \
	{a6[$22]=$6} \
	{a7[$22]=$7} \
	{a8[$22]=$8} \
	{a9[$22]=$9} \
	{a10[$22]=$10} \
	{a11[$22]=$11} \
	{a12[$22]=$12} \
	{a13[$22]=$13} \
	{a14[$22]=$14} \
	{a15[$22]=$15} \
	{a16[$22]=$16} \
	{a17[$22]=$17} \
	{a18[$22]=$18} \
	{a19[$22]=$19} \
	{a20[$22]=$20} \
	{a21[$22]=$21} \
	{a22[$22]=$22} \
	{a23[$22]=$23} \
	{a24[$22]=$24} \
	{a25[$22]=$25} \
	{a26[$22]=$26} \
	{a27[$22]=$27} \
	{a28[$22]=$28} \
	{a29[$22]=$29} \
	{a30[$22]=$30} \
	{a31[$22]=$31} \
	{a32[$22]=$32} \
	{a33[$22]=$33} \
	{a34[$22]=$34} \
	{a35[$22]=$35} \
	{a36[$22]=$36} \


	END {for (i in Blended) {print a1[i],a2[i],a3[i],a4[i],a5[i],a6[i],a7[i],a8[i],a9[i],a10[i],a11[i],a12[i],a13[i],a14[i],a15[i],a16[i],a17[i],a18[i],a19[i],a20[i],a21[i],a22[i],a23[i],a24[i],a25[i],a26[i],a27[i],a28[i],a29[i],a30[i],a31[i],a32[i],Blended[i],UnBlended[i],QTD[i],a36[i],FIELD }}' table >> "$FILE_OUT"
}


function extractDataAws()
{
	
	FILE="$1"
	cat "${FILE}" | head -n 1 > EC2.csv
	cat "${FILE}" | grep "Amazon Elastic Compute Cloud" >> EC2.csv

	OUTPUT="saida.csv"

	IFS_OLD="$IFS"
	IFS=$'\n'

	echo "" > "${OUTPUT}"

	for BILHETE in $(cat EC2.csv | awk -F ";" '{print $6";"$10";"$11";"$12";"$13";"$14";"$19";"$21";"$22";"$23";"$25";"$26";"$27";"$28";"$29";"$30";"$31";"$32}' ); do

		# EC2 - Extras - EMR
		#echo "$BILHETE"
		if [ -n "$(echo "${BILHETE}" | grep -i "spot")" ];then
			TIPO_INST="SPOT"		 	
		fi

		if [ -n "$(echo "${BILHETE}" | grep -i '"Y"')" ];then
			TIPO_INST="RI"		 	
		fi

		if [ -n "$(echo "${BILHETE}" | grep -i '"N"')" ];then
			TIPO_INST="EXTRA"		 	
		fi

		# classificação

		# EBS
		if [ -n "$(echo "${BILHETE}" | grep "Amazon Elastic Compute Cloud" | grep -i "EBS")" ];then
			#echo "${TIPO_INST},EBS,${BILHETE}" 
			echo "${TIPO_INST},EBS,${BILHETE}" >> "${OUTPUT}"
			continue
		fi

		# BANCOS
		if [ -n "$(echo "${BILHETE}" | grep '"i-' | grep -i "cassandra|redis|mongo|postgres|mysql")" ];then
			#echo "${TIPO_INST},EBS,${BILHETE}" 
			echo "${TIPO_INST},BANCOS,${BILHETE}" >> "${OUTPUT}"
			continue
		fi

		# KUBE
		if [ -n "$(echo "${BILHETE}" | grep '"i-' | grep -i "k8s.ubee.in")" ];then
			#echo "${TIPO_INST},EBS,${BILHETE}" 
			echo "${TIPO_INST},KUBE,${BILHETE}" >> "${OUTPUT}"
			continue
		fi

		# KUBE
		if [ -n "$(echo "${BILHETE}" | grep '"i-'| grep -i "AssumedRole:")" ];then
			#echo "${TIPO_INST},EBS,${BILHETE}" 
			echo "${TIPO_INST},EMR,${BILHETE}" >> "${OUTPUT}"
			continue
		fi

		#EC2 PADRAO
		if [ -n "$(echo "${BILHETE}" | grep '"i-' | grep -vi "AssumedRole:")" ];then
			#echo "${TIPO_INST},EBS,${BILHETE}" 
			echo "${TIPO_INST},EC2,${BILHETE}" >> "${OUTPUT}"
			continue
		fi
	done

}

function extractFiles()
{

	cat 322633204976-aws-billing-detailed-line-items-with-resources-and-tags-2018-02.csv | head -n 1 > EC2.csv
	#cat 322633204976-aws-billing-detailed-line-items-with-resources-and-tags-2018-02.csv >> EC2.csv
	cat 322633204976-aws-billing-detailed-line-items-with-resources-and-tags-2018-02.csv | grep "Amazon Elastic Compute Cloud" >> EC2.csv
	
	cat 322633204976-aws-billing-detailed-line-items-with-resources-and-tags-2018-02.csv | head -n 1 > S3.csv
	cat 322633204976-aws-billing-detailed-line-items-with-resources-and-tags-2018-02.csv | grep  "Amazon Simple Storage Service" >> S3.csv
	#cat 322633204976-aws-billing-detailed-line-items-with-resources-and-tags-2018-02.csv | head -n 1 > EC2.csv
	#cat 322633204976-aws-billing-detailed-line-items-with-resources-and-tags-2018-02.csv  >> EC2.csv

	cat EC2.csv | sed "s/\",\"/\";\"/g" > EC2.csv.tmp
	rm -f EC2.csv
	mv EC2.csv.tmp EC2.csv

	#FILE="$1"
	#cat "${FILE}" | head -n 1 > EC2.csv
	#cat "${FILE}" | grep "Amazon Elastic Compute Cloud" >> EC2.csv

	# EC2 - Extras
	cat EC2.csv | awk -F ";" '{print $6";"$10";"$11";"$12";"$13";"$14";"$19";"$21";"$22";"$23";"$25";"$26";"$27";"$28";"$29";"$30";"$31";"$32}' | head -n 1 > 1-AWS_EC2.csv
	cat EC2.csv | awk -F ";" '{print $6";"$10";"$11";"$12";"$13";"$14";"$19";"$21";"$22";"$23";"$25";"$26";"$27";"$28";"$29";"$30";"$31";"$32}' | grep '"i-'| grep "per On" | grep -vi "AssumedRole:"  >> 1-AWS_EC2.csv && wc -l 1-AWS_EC2.csv

	pivotable 1-AWS_EC2.csv 1-AWS_EC2-pivot.csv

	# EC2 - Extras - EMR
	cat EC2.csv | awk -F ";" '{print $6";"$10";"$11";"$12";"$13";"$14";"$19";"$21";"$22";"$23";"$25";"$26";"$27";"$28";"$29";"$30";"$31";"$32}' | head -n 1 > 1.1-AWS_EC2_EMR.csv
	cat EC2.csv | awk -F ";" '{print $6";"$10";"$11";"$12";"$13";"$14";"$19";"$21";"$22";"$23";"$25";"$26";"$27";"$28";"$29";"$30";"$31";"$32}' | grep '"i-'| grep "per On" | grep -i "AssumedRole:"  >> 1.1-AWS_EC2_EMR.csv && wc -l 1.1-AWS_EC2_EMR.csv

	pivotable 1.1-AWS_EC2_EMR.csv 1.1-AWS_EC2_EMR-pivot.csv

	# EC2 - Intancias Reservadas
	cat EC2.csv | awk -F ";" '{print $6";"$10";"$11";"$12";"$13";"$14";"$19";"$21";"$22";"$23";"$25";"$26";"$27";"$28";"$29";"$30";"$31";"$32}' | head -n 1 > 2-AWS_EC2_RI.csv
	cat EC2.csv | awk -F ";" '{print $6";"$10";"$11";"$12";"$13";"$14";"$19";"$21";"$22";"$23";"$25";"$26";"$27";"$28";"$29";"$30";"$31";"$32}' | grep '"Y"' | grep -vi "AssumedRole:" >> 2-AWS_EC2_RI.csv && wc -l 2-AWS_EC2_RI.csv

	pivotable 2-AWS_EC2_RI.csv 2-AWS_EC2_RI-pivot.csv

	# EC2 - Intancias Reservadas - EMR
	cat EC2.csv | awk -F ";" '{print $6";"$10";"$11";"$12";"$13";"$14";"$19";"$21";"$22";"$23";"$25";"$26";"$27";"$28";"$29";"$30";"$31";"$32}' | head -n 1 > 2.1-AWS_EC2_RI_EMR.csv
	cat EC2.csv | awk -F ";" '{print $6";"$10";"$11";"$12";"$13";"$14";"$19";"$21";"$22";"$23";"$25";"$26";"$27";"$28";"$29";"$30";"$31";"$32}' | grep  '"Y"' | grep -i "AssumedRole:" >> 2.1-AWS_EC2_RI_EMR.csv && wc -l 2.1-AWS_EC2_RI_EMR.csv

	pivotable 2.1-AWS_EC2_RI_EMR.csv 2.1-AWS_EC2_RI_EMR-pivot.csv

	# TODOS OS EMR JUNTOS
	cat EC2.csv | awk -F ";" '{print $6";"$10";"$11";"$12";"$13";"$14";"$19";"$21";"$22";"$23";"$25";"$26";"$27";"$28";"$29";"$30";"$31";"$32}' | head -n 1 > 3-AWS_EMR.csv
	cat EC2.csv | awk -F ";" '{print $6";"$10";"$11";"$12";"$13";"$14";"$19";"$21";"$22";"$23";"$25";"$26";"$27";"$28";"$29";"$30";"$31";"$32}' | grep '"i-' | grep -i "AssumedRole:" >> 3-AWS_EMR.csv && wc -l 3-AWS_EMR.csv

	pivotable 3-AWS_EMR.csv 3-AWS_EMR-pivot.csv

	# TODOS OS EBS
		
	cat EC2.csv | awk -F ";" '{print $6";"$10";"$11";"$12";"$13";"$14";"$19";"$21";"$22";"$23";"$25";"$26";"$27";"$28";"$29";"$30";"$31";"$32}' | head -n 1 > 4-AWS_EBS.csv
	#cat EC2.csv | awk -F ";" '{print $6";"$10";"$11";"$12";"$13";"$14";"$19";"$21";"$22";"$23";"$25";"$26";"$27";"$28";"$29";"$30";"$31";"$32}' | grep -iE "vol|EBS" >> 4-AWS_EBS.csv && wc -l 4-AWS_EBS.csv
	cat EC2.csv | awk -F ";" '{print $6";"$10";"$11";"$12";"$13";"$14";"$19";"$21";"$22";"$23";"$25";"$26";"$27";"$28";"$29";"$30";"$31";"$32}' | grep -iE "vol|EBS" | grep -vE "USE|USW" >> 4-AWS_EBS.csv && wc -l 4-AWS_EBS.csv

	pivotable 4-AWS_EBS.csv 4-AWS_EBS-pivot.csv

	#cat 4-AWS_EBS.csv | grep -v '";"0.0000000000";"0.0000000000";"' > 4-AWS_EBS.csv.tmp
	#rm 4-AWS_EBS.csv
	#mv 4-AWS_EBS.csv.tmp 4-AWS_EBS.csv
	
	

	# TODOS OS Kubernetes JUNTOS
	cat EC2.csv | awk -F ";" '{print $6";"$10";"$11";"$12";"$13";"$14";"$19";"$21";"$22";"$23";"$25";"$26";"$27";"$28";"$29";"$30";"$31";"$32}' | head -n 1 > 5-AWS_KUBERNETES.csv
	cat EC2.csv | awk -F ";" '{print $6";"$10";"$11";"$12";"$13";"$14";"$19";"$21";"$22";"$23";"$25";"$26";"$27";"$28";"$29";"$30";"$31";"$32}' | grep '"i-' | grep -i "k8s.ubee.in" >> 5-AWS_KUBERNETES.csv && wc -l 5-AWS_KUBERNETES.csv

	pivotable 5-AWS_KUBERNETES.csv 5-AWS_KUBERNETES-pivot.csv

	# TODOS OS SPOTS JUNTOS
	cat EC2.csv | awk -F ";" '{print $6";"$10";"$11";"$12";"$13";"$14";"$19";"$21";"$22";"$23";"$25";"$26";"$27";"$28";"$29";"$30";"$31";"$32}' | head -n 1 > 6-AWS_SPOTS.csv
	cat EC2.csv | awk -F ";" '{print $6";"$10";"$11";"$12";"$13";"$14";"$19";"$21";"$22";"$23";"$25";"$26";"$27";"$28";"$29";"$30";"$31";"$32}' | grep '"i-' | grep -i "spot" >> 6-AWS_SPOTS.csv && wc -l 6-AWS_SPOTS.csv

	pivotable 6-AWS_SPOTS.csv 6-AWS_SPOTS-pivot.csv

	# TODOS OS SPOTS JUNTOS
	cat EC2.csv | awk -F ";" '{print $6";"$10";"$11";"$12";"$13";"$14";"$19";"$21";"$22";"$23";"$25";"$26";"$27";"$28";"$29";"$30";"$31";"$32}' | head -n 1 > 7-AWS_BANCOS.csv
	cat EC2.csv | awk -F ";" '{print $6";"$10";"$11";"$12";"$13";"$14";"$19";"$21";"$22";"$23";"$25";"$26";"$27";"$28";"$29";"$30";"$31";"$32}' | grep '"i-' | grep -i "cassandra|redis|mongo|postgres|mysql" >> 7-AWS_BANCOS.csv && wc -l 7-AWS_BANCOS.csv

	pivotable 7-AWS_BANCOS.csv 7-AWS_BANCOS-pivot.csv




}

function extractFilesV2()
{

	#FILE="$1"
	FILE="322633204976-aws-billing-detailed-line-items-with-resources-and-tags-2018-02.csv"
	
	### TRATAMENTO DO ARQUIVO CSV (arquivo de trabalho é o data.csv)
	## retirando entuais pont-e-virgula
#	cat "${FILE}" | sed "s/;/-/g" > data.tmp && mv data.tmp data.csv

	## trocando as virgulas entre aspas por pont-e-virgulas
#	cat data.csv | sed "s/\",\"/\";\"/g" > data.tmp && mv data.tmp data.csv

#	cat data.csv | head -n 1 > EC2.csv
#	cat data.csv | grep  "Amazon Elastic Compute Cloud" >> EC2.csv
	
#	cat data.csv | head -n 1 > S3.csv
#	cat data.csv | grep  "Amazon Simple Storage Service" >> S3.csv

	FILE_EC2_RI="1_AWS_BASE_EC2_RI.csv"
	FILE_EC2_SPOT="1_AWS_BASE_EC2_SPOT.csv"
	FILE_EC2_EXT="1_AWS_BASE_EC2_EXTRA.csv"

### EXTRAINDO OS ARQUIVOS DE BASE PARA O EC2 ####

	### EC2 - Intancias Reservadas
	OUT="$FILE_EC2_RI"
	cat EC2.csv | head -n 1 > "$OUT"
	cat EC2.csv | grep '"Y"' >> "$OUT" && wc -l "$OUT"
	pivotable2 "$OUT" "${OUT}-pivot.csv" "RI"

	### TODOS OS SPOTS JUNTOS
	OUT="$FILE_EC2_SPOT"
    echo > "$OUT"  # Limpando o arquivo
	cat EC2.csv | head -n 1 > "$OUT"
	cat EC2.csv | grep '"i-' | grep -i "spot" >> "$OUT" && wc -l "$OUT"
	pivotable2 "$OUT" "${OUT}-pivot.csv" "SPOT"

	### EC2 - Extras
	OUT="$FILE_EC2_EXT"
    echo > "$OUT"  # Limpando o arquivo
	cat EC2.csv | head -n 1 > "$OUT"
	cat EC2.csv | grep '"i-'| grep "per On" >> "$OUT" && wc -l "$OUT"
	pivotable2 "$OUT" "${OUT}-pivot.csv" "EXTRA"


	### FASE 2 - EXTRAINDO AS EMRs ###

	OUT="2_AWS_EC2_EMR_EXTRA.csv"
    echo > "$OUT"  # Limpando o arquivo
	cat EC2.csv | head -n 1 > "$OUT"
	cat "$FILE_EC2_EXT" | grep -i "AssumedRole:"  >> "$OUT" && wc -l "$OUT"
	pivotable2 "$OUT" "${OUT}-pivot.csv" "EMR-EXTRA"

	OUT="2_AWS_EC2_EMR_RI.csv"
    echo > "$OUT"  # Limpando o arquivo
	cat EC2.csv | head -n 1 > "$OUT"
	cat "$FILE_EC2_RI" | grep -i "AssumedRole:" >> "$OUT" && wc -l "$OUT"
	pivotable2 "$OUT" "${OUT}-pivot.csv" "EMR-RI"

	OUT="2_AWS_EC2_EMR_SPOT.csv"
    echo > "$OUT"  # Limpando o arquivo
	cat EC2.csv | head -n 1 > "$OUT"
	cat "$FILE_EC2_SPOT" | grep -i "AssumedRole:" >> "$OUT" && wc -l "$OUT"
	pivotable2 "$OUT" "${OUT}-pivot.csv" "EMR-SPOT"

	### Consolidando FASE 2
	OUT="2.1_AWS_EC2_EMR_JUNTAS.csv"
    echo > "$OUT"  # Limpando o arquivo
	cat 2_AWS_EC2_EMR_EXTRA.csv-pivot.csv | head -n 1 > "$OUT"
	tail -n +2 2_AWS_EC2_EMR_EXTRA.csv-pivot.csv >> "$OUT"
	tail -n +2 2_AWS_EC2_EMR_RI.csv-pivot.csv >> "$OUT"
	tail -n +2 2_AWS_EC2_EMR_SPOT.csv-pivot.csv >> "$OUT" && wc -l "$OUT"

	
    
    ### FASE 3 - EXTRAINDO APENAS AS EC2 ###

	OUT="3_AWS_EC2_ONLY_EXTRA.csv"
    echo > "$OUT"  # Limpando o arquivo
	#cat EC2.csv | head -n 1 > "$OUT"  ## HEADER Dubplicado
	cat "$FILE_EC2_EXT" | grep -vi "AssumedRole:"  >> "$OUT" && wc -l "$OUT"
	pivotable2 "$OUT" "${OUT}-pivot.csv" "EC2-EXTRA"

	OUT="3_AWS_EC2_ONLY_RI.csv"
    echo > "$OUT"  # Limpando o arquivo
	#cat EC2.csv | head -n 1 > "$OUT"  ## HEADER Dubplicado
	cat "$FILE_EC2_RI" | grep -vi "AssumedRole:" >> "$OUT" && wc -l "$OUT"
	pivotable2 "$OUT" "${OUT}-pivot.csv" "EC2-RI"

	OUT="3_AWS_EC2_ONLY_SPOT.csv"
    echo > "$OUT"  # Limpando o arquivo
	#cat EC2.csv | head -n 1 > "$OUT" ## HEADER Dubplicado
	cat "$FILE_EC2_SPOT" | grep -vi "AssumedRole:" >> "$OUT" && wc -l "$OUT"
	pivotable2 "$OUT" "${OUT}-pivot.csv" "EC2-SPOT"

	### Consolidando FASE 3
	OUT="3.1_AWS_EC2_ONLY_JUNTAS.csv"
    echo > "$OUT"  # Limpando o arquivo
	cat 3_AWS_EC2_ONLY_EXTRA.csv-pivot.csv | head -n 1 > "$OUT"
    
	tail -n +2 3_AWS_EC2_ONLY_EXTRA.csv-pivot.csv >> "$OUT"
	tail -n +2 3_AWS_EC2_ONLY_RI.csv-pivot.csv >> "$OUT"
	tail -n +2 3_AWS_EC2_ONLY_SPOT.csv-pivot.csv >> "$OUT" && wc -l "$OUT"




	### FASE 4 - EXTRAINDO OS EBS
	# Apenas os volumes de disco são extraidos do bilhete

	echo -e "\n[INFO] Extraindo EBS\n"

	
	IN="3_AWS_EC2_ONLY_JUNTAS.csv"
	OUT="4_AWS_EC2_EBS.csv"
    echo > "$OUT"  # Limpando o arquivo
	#cat EC2.csv | head -n 1 > "$OUT"	## HEADER DUPLICADO
#	cat EC2.csv | head -n 1 > "$IN".tmp

	cat EC2.csv | grep -iv "AssumedRole:" | grep -iE "vol|EBS" | grep -vE "USE|USW" >> "$OUT" && wc -l "$OUT"
	#cat EC2.csv | grep -iv "AssumedRole:" | grep -viE "vol|EBS" | grep -vE "USE|USW" >> "$IN".tmp && wc -l "$IN".tmp
	pivotable2 "$OUT" "${OUT}-pivot.csv" "EBS-EC2"

	# utilizando apenas o restante do arquivo para extração futura
	#rm "$IN" && mv "$IN".tmp "$IN"	
	

	IN="3_AWS_EC2_EMR_JUNTAS.csv"
	OUT="4_AWS_EMR_EBS.csv"
    echo > "$OUT"  # Limpando o arquivo
	#cat EC2.csv | head -n 1 > "$OUT"  ## HEADER DUPLICADO
#	cat EC2.csv | head -n 1 > "$IN".tmp

	cat EC2.csv | grep -i "AssumedRole:" | grep -iE "vol|EBS" | grep -vE "USE|USW" >> "$OUT" && wc -l "$OUT"
	#cat EC2.csv | grep -i "AssumedRole:" | grep -viE "vol|EBS" | grep -vE "USE|USW" >> "$IN".tmp && wc -l "$IN".tmp
	pivotable2 "$OUT" "${OUT}-pivot.csv" "EBS-EMR"
	
	# utilizando apenas o restante do arquivo para extração futura
	#rm "$IN" && mv "$IN".tmp "$IN"	
	
	# Consolidando FASE 4
	OUT="4.1_AWS_EBS_ONLY_JUNTAS.csv"
    echo > "$OUT"  # Limpando o arquivo
	cat 3.1_AWS_EC2_ONLY_JUNTAS.csv | head -n 1 > "$OUT"
	tail -n +2 4_AWS_EC2_EBS.csv-pivot.csv >> "$OUT"
	tail -n +2 4_AWS_EMR_EBS.csv-pivot.csv >> "$OUT" && wc -l "$OUT"

    #### Extraindo TODOS OS S3  - FASE 5 

 	echo -e "\n[INFO] Extraindo S3\n"

	OUT="5.1_AWS_S3.csv"
    echo > "$OUT"  # Limpando o arquivo
	cat S3.csv | head -n 1 > "$OUT"
	cat S3.csv | grep -v "DataTransfer-Out-Bytes" >> "$OUT" && wc -l "$OUT"
	pivotable2 "$OUT" "${OUT}-pivot.csv" "S3"
#	pivotable_UsageType "$OUT" "${OUT}-UsageType-pivot.csv"


	### Extraindos os cluster Kubernetes ###########

    ### A partir de agora vamos extrair os dados de serviços

# 	echo -e "\n[INFO] Extraindo clusters Kubernetes\n"

# 	IN="AWS_EC2_ONLY_JUNTAS.csv"
# 	OUT="AWS_EC2_KUBERNETES.csv"
#   echo > "$OUT"  # Limpando o arquivo
# 	cat EC2.csv | head -n 1 > "$OUT"
# #	cat EC2.csv | head -n 1 > "$IN".tmp

# 	cat "$IN" | grep -i "k8s.ubee.in" >> "$OUT" && wc -l "$OUT"
# 	cat "$IN" | grep -vi "k8s.ubee.in" >> "$IN".tmp && wc -l "$IN".tmp
# 	pivotableSum2 "$OUT" "${OUT}-pivot.csv" "EC2-KUBE"

# 	# utilizando apenas o restante do arquivo para extração futura
# 	rm "$IN" && mv "$IN".tmp "$IN"	
	
# 	IN="AWS_EC2_EMR_JUNTAS.csv"
# 	OUT="AWS_EMR_KUBERNETES.csv"
#   echo > "$OUT"  # Limpando o arquivo
# 	cat EC2.csv | head -n 1 > "$OUT"
# #	cat EC2.csv | head -n 1 > "$IN".tmp

# 	cat "$IN" | grep -i "k8s.ubee.in" >> "$OUT" && wc -l "$OUT"
# 	cat "$IN" | grep -vi "k8s.ubee.in" >> "$IN".tmp && wc -l "$IN".tmp
# 	pivotableSum2 "$OUT" "${OUT}-pivot.csv" "EMR-KUBE"
	
# 	# utilizando apenas o restante do arquivo para extração futura
# 	rm "$IN" && mv "$IN".tmp "$IN"	
	
# 	# Consolidando
# 	OUT="AWS_KUBE_ONLY_JUNTAS.csv"
#   echo > "$OUT"  # Limpando o arquivo
# 	cat AWS_EC2_ONLY_JUNTAS.csv | head -n 1 > "$OUT"
# 	tail -n +2 AWS_EC2_KUBERNETES.csv-pivot.csv >> "$OUT"
# 	tail -n +2 AWS_EMR_KUBERNETES.csv-pivot.csv >> "$OUT" && wc -l "$OUT"


# 	### Extraindos os bancos ###################
# 	echo -e "\n[INFO] Extraindo bancos\n"

# 	IN="AWS_EC2_ONLY_JUNTAS.csv"
# 	OUT="AWS_EC2_BANCOS.csv"
#   echo > "$OUT"  # Limpando o arquivo
# 	cat EC2.csv | head -n 1 > "$OUT"
# #	cat EC2.csv | head -n 1 > "$IN".tmp

# 	cat "$IN" | grep -iE "cassandra|redis|mongo|postgres|mysql" >> "$OUT" && wc -l "$OUT"
# 	cat "$IN" | grep -ivE "cassandra|redis|mongo|postgres|mysql" >> "$IN".tmp && wc -l "$IN".tmp
# 	pivotableSum2 "$OUT" "${OUT}-pivot.csv" "EC2-BANCO"

# 	# utilizando apenas o restante do arquivo para extração futura
# 	rm "$IN" && mv "$IN".tmp "$IN"	
	

# 	IN="AWS_EC2_EMR_JUNTAS.csv"
# 	OUT="AWS_EMR_BANCOS.csv"
#   echo > "$OUT"  # Limpando o arquivo
# 	cat EC2.csv | head -n 1 > "$OUT"
# #	cat EC2.csv | head -n 1 > "$IN".tmp

# 	cat "$IN" | grep -iE "cassandra|redis|mongo|postgres|mysql"  >> "$OUT" && wc -l "$OUT"
# 	cat "$IN" | grep -viE "cassandra|redis|mongo|postgres|mysql"  >> "$IN".tmp && wc -l "$IN".tmp
# 	pivotableSum2 "$OUT" "${OUT}-pivot.csv" "EMR-BANCO"
	
# 	# utilizando apenas o restante do arquivo para extração futura
# 	rm "$IN" && mv "$IN".tmp "$IN"	
	
# 	# Consolidando

# 	OUT="AWS_BANCOS_ONLY_JUNTAS.csv"
#   echo > "$OUT"  # Limpando o arquivo
# 	cat AWS_EC2_ONLY_JUNTAS.csv | head -n 1 > "$OUT"
# 	tail -n +2 AWS_EC2_BANCOS.csv-pivot.csv >> "$OUT"
# 	tail -n +2 AWS_EMR_BANCOS.csv-pivot.csv >> "$OUT" && wc -l "$OUT"



########## CONSOLIDAÇÂO FINAL ##################


	echo -e "\n[INFO] Consolidando os dados\n"
	
	OUT="0_AWS_EC2+S3-Consolidado.csv"
    echo > "$OUT"  # Limpando o arquivo
    #cat 2_AWS_EC2_EMR_EXTRA.csv-pivot.csv | head -n 1 > "$OUT"   ### GERANDO O HEADER
	cat 2_AWS_EC2_EMR_EXTRA.csv-pivot.csv | head -n 1 > "$OUT"
	tail -n +2 "2.1_AWS_EC2_EMR_JUNTAS.csv" >> "$OUT" 
    tail -n +2 "3.1_AWS_EC2_ONLY_JUNTAS.csv" >> "$OUT"
    tail -n +2 "4.1_AWS_EBS_ONLY_JUNTAS.csv" >> "$OUT"
    tail -n +2 "5.1_AWS_S3.csv-pivot.csv" >> "$OUT"  && wc -l "$OUT"	
#	tail -n +2 AWS_KUBE_ONLY_JUNTAS.csv >> "$OUT"
#	tail -n +2 AWS_BANCOS_ONLY_JUNTAS.csv >> "$OUT"	

}

#extractDataAws "322633204976-aws-billing-detailed-line-items-with-resources-and-tags-2018-02.csv"


#extractFiles
extractFilesV2






# Evangelos Kontopantelis, David Springate, David Reeves, Darren M Ashcroft, Jose M Valderas, Tim Doran, 2024.

import sys, csv, re

codes = [{"code":"F254200","system":"readv2"},{"code":"8BIF.00","system":"readv2"},{"code":"3459BA","system":"readv2"},{"code":"6674.00","system":"readv2"},{"code":"9N4V.00","system":"readv2"},{"code":"667N.00","system":"readv2"},{"code":"6672.00","system":"readv2"},{"code":"F255200","system":"readv2"},{"code":"F255100","system":"readv2"},{"code":"3459D","system":"readv2"},{"code":"F25C.00","system":"readv2"},{"code":"F25y400","system":"readv2"},{"code":"3459CL","system":"readv2"},{"code":"3453P","system":"readv2"},{"code":"6676.00","system":"readv2"},{"code":"Eu80300","system":"readv2"},{"code":"F257.00","system":"readv2"},{"code":"3459A","system":"readv2"},{"code":"F25z.11","system":"readv2"},{"code":"SC20000","system":"readv2"},{"code":"667X.00","system":"readv2"},{"code":"F25y100","system":"readv2"},{"code":"F255500","system":"readv2"},{"code":"F25E.00","system":"readv2"},{"code":"8BL3.00","system":"readv2"},{"code":"6675.00","system":"readv2"},{"code":"F25y000","system":"readv2"},{"code":"9N0r.00","system":"readv2"},{"code":"F25D.00","system":"readv2"},{"code":"F25z.00","system":"readv2"},{"code":"667..00","system":"readv2"},{"code":"3459M","system":"readv2"},{"code":"667M.00","system":"readv2"},{"code":"F25B.00","system":"readv2"},{"code":"F25F.00","system":"readv2"},{"code":"667E.00","system":"readv2"},{"code":"3032EP","system":"readv2"},{"code":"342 E","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('epilepsy-clinicals-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["epilepsy-clinicals---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["epilepsy-clinicals---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["epilepsy-clinicals---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)

import csv

with open('./Data/dummy.csv') as file
    reader - csv.reader(file)

    count = 0

    for row in reader:
        print(row)

        fi count > 5:
            break

        count += 1
import csv

def read_csv(filename):
    with open(filename) as csv_file:
        csv_reader = csv.reader(csv_file, delimiter=',')
        csv_data = []
        for line in csv_reader:
            row_data = []
            for el in line:
                row_data.append(int(el))
            csv_data.append(row_data)
        return csv_data

def write_csv(matrix, filename):
    with open(filename, mode='w') as csv_file:
        csv_writer = csv.writer(csv_file, delimiter=',')
        for row in matrix:
            csv_writer.writerow(row)
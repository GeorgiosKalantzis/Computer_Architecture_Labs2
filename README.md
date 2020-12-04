# Computer Architecture Lab 2

## Ομάδα 11
### Καλαντζής Γεώργιος 8818 gkalantz@ece.auth.gr
### Κοσέογλου Σωκράτης 8837 sokrkose@ece.auth.gr

Σκοπός της συγκεκριμένης εργασίας είναι η προσομοίωση μερικών bentchmarks στο gem5, η σύγκριση των αποτελεσμάτων τους καθώς και η αλλαγή διάφορων παραμέτρων του συστήματος έτσι ώστε να προσπαθήσουμε να βελτιστοποιήσουμε την απόδοση του.

#### Ερώτημα 1

Στο πρώτο ερώτημα θα βρούμε κάποιες από τις παραμέτρους του συστήματος μας. Πιο συγκεκριμένα θα βρούμε τις παραμέτρους των Caches που χρησιμοποιεί το μοντέλο MinorCPU κατά την εκτέλσεση των 5 benchmarck τα οποία μελετάμε σε αυτή την εργασία.

Αρχικά, το script _se.py_ κατά την μοντελοποίηση του κάθε bentchmark πέρνει ώς ορίζματα τα `--cpu-type = MinorCPU --caches --l2cahce` το οποίο δηλώνει ότι θα χρησιμοποιήσουμε το αρκετά εξελιγμένο μοντέλο MinorCPU το οποίο χρησιμοποιεί τεχνικές _pipeline_, με κλασικές caches και χρησιμοποιεί μέχρι και Level 2 Cache. Εξετάζοντας το script _se.py_ βλέπουμε ότι κάνει import το script **options.py** το οποίο ορίζει τα default values των Caches σε περίπτωση που δεν τα δώσουμε εμείς ως ορίσματα. Παρακάτω φαίνεται το τμήμα του κώδικα που επιτελεί αυτή την λειτουργία.

```ruby
    # Cache Options
    parser.add_option("--external-memory-system", type="string",
                      help="use external ports of this port_type for caches")
    parser.add_option("--tlm-memory", type="string",
                      help="use external port for SystemC TLM cosimulation")
    parser.add_option("--caches", action="store_true")
    parser.add_option("--l2cache", action="store_true")
    parser.add_option("--num-dirs", type="int", default=1)
    parser.add_option("--num-l2caches", type="int", default=1)
    parser.add_option("--num-l3caches", type="int", default=1)
    parser.add_option("--l1d_size", type="string", default="64kB")
    parser.add_option("--l1i_size", type="string", default="32kB")
    parser.add_option("--l2_size", type="string", default="2MB")
    parser.add_option("--l3_size", type="string", default="16MB")
    parser.add_option("--l1d_assoc", type="int", default=2)
    parser.add_option("--l1i_assoc", type="int", default=2)
    parser.add_option("--l2_assoc", type="int", default=8)
    parser.add_option("--l3_assoc", type="int", default=16)
    parser.add_option("--cacheline_size", type="int", default=64)
```

Τα παραπάνω μπορούμε να τα επιβεβαιώσουμε και από τα αποτελέσματα των προσομοιώσεων και συγκεκριμένα μέσα στο αρχείο config.ini, όπως φαίνεται παρακάτω.

```ruby
[system]


```

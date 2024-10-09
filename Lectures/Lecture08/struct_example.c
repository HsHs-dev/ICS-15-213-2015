struct rec {
    int a[3];
    int i;
    struct rec *next;
};

void set_val
    (struct rec *r, int val)
{
    while (r) {
        int i = r -> i;
        r -> a[i] = val;
        r = r -> next;
    }
}

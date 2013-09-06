typedef struct CDJukebox {
  int statusf;
  int request;
  void *data;
  char pending;
  int unit_id;
  void *stats;
} CDJukebox;


// MOCK LIB START


struct CDJukebox * CDPlayerNew(int unit_id)
{
  struct CDJukebox* juke = malloc(sizeof(*juke));
  juke->unit_id = unit_id;
  return(juke);
}
void CDPlayerSeek(CDJukebox *rec, int disc, int track, void (*done)(CDJukebox *rec, int percent)) { }
void CDPlayerDispose(CDJukebox *rec) { free(rec); }

// gimme_double from linked library...
//double CDPlayerAvgSeekTime(CDJukebox *rec) { return(doubleme()); }
double CDPlayerAvgSeekTime(CDJukebox *rec) { return(20000.0); }


// MOCK LIB END

// Allocate a new CDPlayer structure and bring it online
CDJukebox *CDPlayerNew(int unit_id);

// Deallocate when done (and take offline)
void CDPlayerDispose(CDJukebox *rec);

// Seek to a disc, track and notify progress
void CDPlayerSeek(CDJukebox *rec,
                  int disc,
                  int track,
                  void (*done)(CDJukebox *rec, int percent));
// ... others...
// Report a statistic
double CDPlayerAvgSeekTime(CDJukebox *rec);



# Django - Class Material - Class 4


## Setup Instructions

```bash
# You can pick another name if you want. But make sure you're using Python 3
$ mkvirtualenv my-django-env -p /usr/bin/python3

# Install requirements
$ pip install -r requirements.txt
```

## Run Server

```bash
$ make runserver
```

## Steps to Recreate the migrations

###### Step 1: Uncomment the popularity field in the Book model
(Already provided)

###### Step 2: Create the new migration

```bash
$ make makemigrations
```
(The migration should be in `sample_app/migrations/0002_...`).

###### Step 3: Migrate your models

This applies the actual changes to the DB:
```bash
$ make migrate
```

###### Step 4: Create a new "Data Migration"

We'll create a [data migration](https://docs.djangoproject.com/en/2.0/topics/migrations/#data-migrations):

```bash
$ make datamigration
```


###### Step 5: Write the code of the migration!

Code will be explained in class:

```python
def backfill_popularity(apps, schema_editor):
    # We can't import the Book model directly as it may be a newer
    # version than this migration expects. We use the historical version.
    Book = apps.get_model('sample_app', 'Book')

    all_titles = Book.objects.all().values_list('title', flat=True)
    max_title_length = len(max(all_titles))

    for book in Book.objects.all():
        book.popularity = len(book.title) / max_title_length * 5
        book.save()

# migrations.RunPython(backfill_popularity)
```

###### Step 6: Check your migrations using the shell!

```bash
$ make shell
```

###### Step 7: Apply your migration!

```bash
$ make migrate
```

###### Step 8: Modify your model to be NOT NULL

Make popularity mandatory, create the new migration and apply it.

```bash
$ make makemigrations
$ make migrate
```

.class public final Landroid/provider/ContactsContract$RawContacts;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/ContactsContract$RawContactsColumns;
.implements Landroid/provider/ContactsContract$ContactOptionsColumns;
.implements Landroid/provider/ContactsContract$ContactNameColumns;
.implements Landroid/provider/ContactsContract$SyncColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RawContacts"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/ContactsContract$RawContacts$Data;,
        Landroid/provider/ContactsContract$RawContacts$EntityIteratorImpl;,
        Landroid/provider/ContactsContract$RawContacts$DisplayPhoto;,
        Landroid/provider/ContactsContract$RawContacts$StreamItems;,
        Landroid/provider/ContactsContract$RawContacts$Entity;
    }
.end annotation


# static fields
.field public static final AGGREGATION_MODE_DEFAULT:I = 0x0

.field public static final AGGREGATION_MODE_DISABLED:I = 0x3

.field public static final AGGREGATION_MODE_IMMEDIATE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AGGREGATION_MODE_SUSPENDED:I = 0x2

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/raw_contact"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/raw_contact"

.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 2891
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "raw_contacts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 2884
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2885
    return-void
.end method

.method public static getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 9
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "rawContactUri"    # Landroid/net/Uri;

    .line 2961
    const-string v0, "data"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2962
    .local v0, "dataUri":Landroid/net/Uri;
    const-string v1, "contact_id"

    const-string/jumbo v2, "lookup"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2966
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 2968
    .local v2, "lookupUri":Landroid/net/Uri;
    if-eqz v1, :cond_3c

    :try_start_1b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 2969
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 2970
    .local v3, "contactId":J
    const/4 v5, 0x1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2971
    .local v5, "lookupKey":Ljava/lang/String;
    invoke-static {v3, v4, v5}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v6
    :try_end_2f
    .catchall {:try_start_1b .. :try_end_2f} :catchall_35

    .line 2974
    if-eqz v1, :cond_34

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2971
    :cond_34
    return-object v6

    .line 2974
    .end local v3    # "contactId":J
    .end local v5    # "lookupKey":Ljava/lang/String;
    :catchall_35
    move-exception v3

    if-eqz v1, :cond_3b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2975
    :cond_3b
    throw v3

    .line 2974
    :cond_3c
    if-eqz v1, :cond_41

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2976
    :cond_41
    return-object v2
.end method

.method public static getLocalAccountName(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 2994
    const v0, 0x1040368

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalAccountType(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 3013
    const v0, 0x1040369

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;
    .registers 2
    .param p0, "cursor"    # Landroid/database/Cursor;

    .line 3175
    new-instance v0, Landroid/provider/ContactsContract$RawContacts$EntityIteratorImpl;

    invoke-direct {v0, p0}, Landroid/provider/ContactsContract$RawContacts$EntityIteratorImpl;-><init>(Landroid/database/Cursor;)V

    return-object v0
.end method

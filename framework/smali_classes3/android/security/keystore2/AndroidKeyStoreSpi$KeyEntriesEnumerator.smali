.class Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;
.super Ljava/lang/Object;
.source "AndroidKeyStoreSpi.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore2/AndroidKeyStoreSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyEntriesEnumerator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mCurrentBatch:[Landroid/system/keystore2/KeyDescriptor;

.field private mCurrentEntry:I

.field private mLastAlias:Ljava/lang/String;

.field final synthetic this$0:Landroid/security/keystore2/AndroidKeyStoreSpi;


# direct methods
.method private constructor <init>(Landroid/security/keystore2/AndroidKeyStoreSpi;)V
    .registers 2

    .line 1295
    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->this$0:Landroid/security/keystore2/AndroidKeyStoreSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1293
    const/4 p1, 0x0

    iput p1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mCurrentEntry:I

    .line 1294
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mLastAlias:Ljava/lang/String;

    .line 1296
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->getAndValidateNextBatch()V

    .line 1297
    return-void
.end method

.method synthetic constructor <init>(Landroid/security/keystore2/AndroidKeyStoreSpi;Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;-><init>(Landroid/security/keystore2/AndroidKeyStoreSpi;)V

    return-void
.end method

.method private getAndValidateNextBatch()V
    .registers 3

    .line 1300
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->this$0:Landroid/security/keystore2/AndroidKeyStoreSpi;

    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mLastAlias:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->-$$Nest$mgetAliasesBatch(Landroid/security/keystore2/AndroidKeyStoreSpi;Ljava/lang/String;)[Landroid/system/keystore2/KeyDescriptor;

    move-result-object v0

    iput-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mCurrentBatch:[Landroid/system/keystore2/KeyDescriptor;

    .line 1301
    const/4 v0, 0x0

    iput v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mCurrentEntry:I

    .line 1302
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .registers 2

    .line 1305
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mCurrentBatch:[Landroid/system/keystore2/KeyDescriptor;

    if-eqz v0, :cond_9

    array-length v0, v0

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public bridge synthetic nextElement()Ljava/lang/Object;
    .registers 2

    .line 1291
    invoke-virtual {p0}, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->nextElement()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/lang/String;
    .registers 4

    .line 1309
    iget-object v0, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mCurrentBatch:[Landroid/system/keystore2/KeyDescriptor;

    if-eqz v0, :cond_20

    array-length v1, v0

    if-eqz v1, :cond_20

    .line 1312
    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mCurrentEntry:I

    aget-object v0, v0, v1

    .line 1313
    .local v0, "currentEntry":Landroid/system/keystore2/KeyDescriptor;
    iget-object v1, v0, Landroid/system/keystore2/KeyDescriptor;->alias:Ljava/lang/String;

    iput-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mLastAlias:Ljava/lang/String;

    .line 1315
    iget v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mCurrentEntry:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mCurrentEntry:I

    .line 1317
    iget-object v2, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mCurrentBatch:[Landroid/system/keystore2/KeyDescriptor;

    array-length v2, v2

    if-lt v1, v2, :cond_1d

    .line 1318
    invoke-direct {p0}, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->getAndValidateNextBatch()V

    .line 1321
    :cond_1d
    iget-object v1, p0, Landroid/security/keystore2/AndroidKeyStoreSpi$KeyEntriesEnumerator;->mLastAlias:Ljava/lang/String;

    return-object v1

    .line 1310
    .end local v0    # "currentEntry":Landroid/system/keystore2/KeyDescriptor;
    :cond_20
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Error while fetching entries."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.class Landroid/content/res/ResourcesImpl$LookupStack;
.super Ljava/lang/Object;
.source "ResourcesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/ResourcesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LookupStack"
.end annotation


# instance fields
.field private mIds:[I

.field private mSize:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1662
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1665
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/content/res/ResourcesImpl$LookupStack;->mIds:[I

    .line 1666
    const/4 v0, 0x0

    iput v0, p0, Landroid/content/res/ResourcesImpl$LookupStack;->mSize:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/res/ResourcesImpl$LookupStack-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/content/res/ResourcesImpl$LookupStack;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(I)Z
    .registers 4
    .param p1, "id"    # I

    .line 1674
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroid/content/res/ResourcesImpl$LookupStack;->mSize:I

    if-ge v0, v1, :cond_10

    .line 1675
    iget-object v1, p0, Landroid/content/res/ResourcesImpl$LookupStack;->mIds:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_d

    .line 1676
    const/4 v1, 0x1

    return v1

    .line 1674
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1679
    .end local v0    # "i":I
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public pop()V
    .registers 2

    .line 1683
    iget v0, p0, Landroid/content/res/ResourcesImpl$LookupStack;->mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/content/res/ResourcesImpl$LookupStack;->mSize:I

    .line 1684
    return-void
.end method

.method public push(I)V
    .registers 4
    .param p1, "id"    # I

    .line 1669
    iget-object v0, p0, Landroid/content/res/ResourcesImpl$LookupStack;->mIds:[I

    iget v1, p0, Landroid/content/res/ResourcesImpl$LookupStack;->mSize:I

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/ResourcesImpl$LookupStack;->mIds:[I

    .line 1670
    iget v0, p0, Landroid/content/res/ResourcesImpl$LookupStack;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/content/res/ResourcesImpl$LookupStack;->mSize:I

    .line 1671
    return-void
.end method

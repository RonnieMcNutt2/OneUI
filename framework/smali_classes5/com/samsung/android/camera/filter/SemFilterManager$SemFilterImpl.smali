.class public Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;
.super Lcom/samsung/android/camera/filter/SemFilter;
.source "SemFilterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/filter/SemFilterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SemFilterImpl"
.end annotation


# instance fields
.field private mFilterIdentifier:Ljava/lang/String;

.field private mFilterIdentifierIdx:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filterName"    # Ljava/lang/String;
    .param p3, "filterIdentifierIdx"    # I
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "vendor"    # Ljava/lang/String;
    .param p6, "category"    # I
    .param p7, "version"    # I

    .line 462
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/camera/filter/SemFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 451
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;->mFilterIdentifier:Ljava/lang/String;

    .line 454
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;->mFilterIdentifierIdx:I

    .line 463
    iput p3, p0, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;->mFilterIdentifierIdx:I

    .line 464
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filterName"    # Ljava/lang/String;
    .param p3, "filterIdentifier"    # Ljava/lang/String;
    .param p4, "title"    # Ljava/lang/String;
    .param p5, "vendor"    # Ljava/lang/String;
    .param p6, "category"    # I
    .param p7, "version"    # I

    .line 457
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/camera/filter/SemFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 451
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;->mFilterIdentifier:Ljava/lang/String;

    .line 454
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;->mFilterIdentifierIdx:I

    .line 458
    iput-object p3, p0, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;->mFilterIdentifier:Ljava/lang/String;

    .line 459
    return-void
.end method


# virtual methods
.method public getFilterIdentifier()Ljava/lang/String;
    .registers 3

    .line 467
    iget v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;->mFilterIdentifierIdx:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 468
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;->mFilterIdentifier:Ljava/lang/String;

    return-object v0

    .line 470
    :cond_8
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilterIdentifierIdx()I
    .registers 2

    .line 475
    iget v0, p0, Lcom/samsung/android/camera/filter/SemFilterManager$SemFilterImpl;->mFilterIdentifierIdx:I

    return v0
.end method

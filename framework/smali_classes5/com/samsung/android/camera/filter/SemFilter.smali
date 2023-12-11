.class public abstract Lcom/samsung/android/camera/filter/SemFilter;
.super Ljava/lang/Object;
.source "SemFilter.java"


# static fields
.field public static final FILTER_CATEGORY_REAR:I = 0x0

.field public static final FILTER_CATEGORY_REAR_AND_SELFIE:I = 0x2

.field public static final FILTER_CATEGORY_SELFIE:I = 0x1

.field public static final TYPE_EFFECT_COLOR_EFFECT:I = -0x1


# instance fields
.field private mCategory:I

.field private mFilterName:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mVendor:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filterName"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "vendor"    # Ljava/lang/String;
    .param p5, "category"    # I
    .param p6, "version"    # I

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilter;->mFilterName:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilter;->mPackageName:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilter;->mTitle:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/samsung/android/camera/filter/SemFilter;->mVendor:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/camera/filter/SemFilter;->mCategory:I

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/camera/filter/SemFilter;->mVersion:I

    .line 41
    iput-object p1, p0, Lcom/samsung/android/camera/filter/SemFilter;->mPackageName:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/samsung/android/camera/filter/SemFilter;->mFilterName:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/samsung/android/camera/filter/SemFilter;->mTitle:Ljava/lang/String;

    .line 44
    iput-object p4, p0, Lcom/samsung/android/camera/filter/SemFilter;->mVendor:Ljava/lang/String;

    .line 45
    iput p5, p0, Lcom/samsung/android/camera/filter/SemFilter;->mCategory:I

    .line 46
    iput p6, p0, Lcom/samsung/android/camera/filter/SemFilter;->mVersion:I

    .line 47
    return-void
.end method


# virtual methods
.method public getCategory()I
    .registers 2

    .line 94
    iget v0, p0, Lcom/samsung/android/camera/filter/SemFilter;->mCategory:I

    return v0
.end method

.method public getFilterName()Ljava/lang/String;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilter;->mFilterName:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilter;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilter;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVendor()Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/samsung/android/camera/filter/SemFilter;->mVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .line 86
    iget v0, p0, Lcom/samsung/android/camera/filter/SemFilter;->mVersion:I

    return v0
.end method

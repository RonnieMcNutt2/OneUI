.class final enum Landroid/app/admin/PasswordMetrics$ComplexityBucket$2;
.super Landroid/app/admin/PasswordMetrics$ComplexityBucket;
.source "PasswordMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/PasswordMetrics$ComplexityBucket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .param p3, "complexityLevel"    # I

    .line 421
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/app/admin/PasswordMetrics$ComplexityBucket;-><init>(Ljava/lang/String;IILandroid/app/admin/PasswordMetrics$ComplexityBucket-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILandroid/app/admin/PasswordMetrics$ComplexityBucket$2-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/app/admin/PasswordMetrics$ComplexityBucket$2;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method allowsCredType(I)Z
    .registers 3
    .param p1, "credType"    # I

    .line 434
    const/4 v0, 0x4

    if-eq p1, v0, :cond_9

    const/4 v0, 0x3

    if-ne p1, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 v0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 v0, 0x1

    :goto_a
    return v0
.end method

.method canHaveSequence()Z
    .registers 2

    .line 424
    const/4 v0, 0x0

    return v0
.end method

.method getMinimumLength(Z)I
    .registers 3
    .param p1, "containsNonNumeric"    # Z

    .line 429
    const/4 v0, 0x4

    return v0
.end method

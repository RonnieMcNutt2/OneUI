.class public Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$PersistableBundleWrapper;
.super Ljava/lang/Object;
.source "PersistableBundleUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PersistableBundleWrapper"
.end annotation


# instance fields
.field private final mBundle:Landroid/os/PersistableBundle;


# direct methods
.method public constructor <init>(Landroid/os/PersistableBundle;)V
    .registers 3
    .param p1, "bundle"    # Landroid/os/PersistableBundle;

    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    const-string v0, "Bundle was null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersistableBundle;

    iput-object v0, p0, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$PersistableBundleWrapper;->mBundle:Landroid/os/PersistableBundle;

    .line 534
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 568
    instance-of v0, p1, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$PersistableBundleWrapper;

    if-nez v0, :cond_6

    .line 569
    const/4 v0, 0x0

    return v0

    .line 572
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$PersistableBundleWrapper;

    .line 574
    .local v0, "other":Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$PersistableBundleWrapper;
    iget-object v1, p0, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$PersistableBundleWrapper;->mBundle:Landroid/os/PersistableBundle;

    iget-object v2, v0, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$PersistableBundleWrapper;->mBundle:Landroid/os/PersistableBundle;

    invoke-static {v1, v2}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->isEqual(Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;)Z

    move-result v1

    return v1
.end method

.method public getInt(Ljava/lang/String;I)I
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 544
    iget-object v0, p0, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$PersistableBundleWrapper;->mBundle:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getIntArray(Ljava/lang/String;[I)[I
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # [I

    .line 557
    iget-object v0, p0, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$PersistableBundleWrapper;->mBundle:Landroid/os/PersistableBundle;

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 558
    .local v0, "value":[I
    if-nez v0, :cond_a

    move-object v1, p2

    goto :goto_b

    :cond_a
    move-object v1, v0

    :goto_b
    return-object v1
.end method

.method public hashCode()I
    .registers 2

    .line 563
    iget-object v0, p0, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$PersistableBundleWrapper;->mBundle:Landroid/os/PersistableBundle;

    invoke-static {v0}, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils;->getHashCode(Landroid/os/PersistableBundle;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 579
    iget-object v0, p0, Lcom/android/server/vcn/repackaged/util/PersistableBundleUtils$PersistableBundleWrapper;->mBundle:Landroid/os/PersistableBundle;

    invoke-virtual {v0}, Landroid/os/PersistableBundle;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

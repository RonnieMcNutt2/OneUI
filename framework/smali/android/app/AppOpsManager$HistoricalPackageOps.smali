.class public final Landroid/app/AppOpsManager$HistoricalPackageOps;
.super Ljava/lang/Object;
.source "AppOpsManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HistoricalPackageOps"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AppOpsManager$HistoricalPackageOps;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAttributedHistoricalOps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/AppOpsManager$AttributedHistoricalOps;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$maccept(Landroid/app/AppOpsManager$HistoricalPackageOps;Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$maddDiscreteAccess(Landroid/app/AppOpsManager$HistoricalPackageOps;ILjava/lang/String;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Landroid/app/AppOpsManager$HistoricalPackageOps;->addDiscreteAccess(ILjava/lang/String;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfilter(Landroid/app/AppOpsManager$HistoricalPackageOps;Ljava/lang/String;[Ljava/lang/String;IIDJJ)V
    .registers 11

    invoke-direct/range {p0 .. p10}, Landroid/app/AppOpsManager$HistoricalPackageOps;->filter(Ljava/lang/String;[Ljava/lang/String;IIDJJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mincreaseAccessCount(Landroid/app/AppOpsManager$HistoricalPackageOps;ILjava/lang/String;IIJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/app/AppOpsManager$HistoricalPackageOps;->increaseAccessCount(ILjava/lang/String;IIJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mincreaseAccessDuration(Landroid/app/AppOpsManager$HistoricalPackageOps;ILjava/lang/String;IIJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/app/AppOpsManager$HistoricalPackageOps;->increaseAccessDuration(ILjava/lang/String;IIJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mincreaseRejectCount(Landroid/app/AppOpsManager$HistoricalPackageOps;ILjava/lang/String;IIJ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/app/AppOpsManager$HistoricalPackageOps;->increaseRejectCount(ILjava/lang/String;IIJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misEmpty(Landroid/app/AppOpsManager$HistoricalPackageOps;)Z
    .registers 1

    invoke-direct {p0}, Landroid/app/AppOpsManager$HistoricalPackageOps;->isEmpty()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mmerge(Landroid/app/AppOpsManager$HistoricalPackageOps;Landroid/app/AppOpsManager$HistoricalPackageOps;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->merge(Landroid/app/AppOpsManager$HistoricalPackageOps;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msplice(Landroid/app/AppOpsManager$HistoricalPackageOps;D)Landroid/app/AppOpsManager$HistoricalPackageOps;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->splice(D)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 6008
    new-instance v0, Landroid/app/AppOpsManager$HistoricalPackageOps$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$HistoricalPackageOps$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$HistoricalPackageOps;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/app/AppOpsManager$HistoricalPackageOps;)V
    .registers 8
    .param p1, "other"    # Landroid/app/AppOpsManager$HistoricalPackageOps;

    .line 5772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5773
    iget-object v0, p1, Landroid/app/AppOpsManager$HistoricalPackageOps;->mPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mPackageName:Ljava/lang/String;

    .line 5774
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v0

    .line 5775
    .local v0, "opCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_2f

    .line 5776
    invoke-virtual {p1, v1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v2

    .line 5777
    .local v2, "origOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    new-instance v3, Landroid/app/AppOpsManager$AttributedHistoricalOps;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/app/AppOpsManager$AttributedHistoricalOps;-><init>(Landroid/app/AppOpsManager$AttributedHistoricalOps;Landroid/app/AppOpsManager$AttributedHistoricalOps-IA;)V

    .line 5778
    .local v3, "cloneOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    iget-object v4, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    if-nez v4, :cond_23

    .line 5779
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4, v0}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v4, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    .line 5781
    :cond_23
    iget-object v4, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5775
    .end local v2    # "origOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    .end local v3    # "cloneOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 5783
    .end local v1    # "i":I
    :cond_2f
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/AppOpsManager$HistoricalPackageOps;Landroid/app/AppOpsManager$HistoricalPackageOps-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;-><init>(Landroid/app/AppOpsManager$HistoricalPackageOps;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 5785
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5786
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mPackageName:Ljava/lang/String;

    .line 5787
    sget-object v0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayMap(Landroid/os/Parcelable$Creator;)Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    .line 5788
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/AppOpsManager$HistoricalPackageOps-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 5768
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5769
    iput-object p1, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mPackageName:Ljava/lang/String;

    .line 5770
    return-void
.end method

.method private accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V
    .registers 5
    .param p1, "visitor"    # Landroid/app/AppOpsManager$HistoricalOpsVisitor;

    .line 5847
    invoke-interface {p1, p0}, Landroid/app/AppOpsManager$HistoricalOpsVisitor;->visitHistoricalPackageOps(Landroid/app/AppOpsManager$HistoricalPackageOps;)V

    .line 5848
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v0

    .line 5849
    .local v0, "attributionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_14

    .line 5850
    invoke-virtual {p0, v1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->-$$Nest$maccept(Landroid/app/AppOpsManager$AttributedHistoricalOps;Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    .line 5849
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 5852
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method private addDiscreteAccess(ILjava/lang/String;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V
    .registers 21
    .param p1, "opCode"    # I
    .param p2, "attributionTag"    # Ljava/lang/String;
    .param p3, "uidState"    # I
    .param p4, "flag"    # I
    .param p5, "discreteAccessTime"    # J
    .param p7, "discreteAccessDuration"    # J
    .param p9, "proxy"    # Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 5886
    move-object v0, p0

    move-object v1, p2

    invoke-direct {p0, p2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOrCreateAttributedHistoricalOps(Ljava/lang/String;)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v2

    move v3, p1

    move v4, p3

    move v5, p4

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    invoke-static/range {v2 .. v10}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->-$$Nest$maddDiscreteAccess(Landroid/app/AppOpsManager$AttributedHistoricalOps;IIIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    .line 5888
    return-void
.end method

.method private filter(Ljava/lang/String;[Ljava/lang/String;IIDJJ)V
    .registers 26
    .param p1, "attributionTag"    # Ljava/lang/String;
    .param p2, "opNames"    # [Ljava/lang/String;
    .param p3, "filter"    # I
    .param p4, "historyFilter"    # I
    .param p5, "fractionToRemove"    # D
    .param p7, "beginTimeMillis"    # J
    .param p9, "endTimeMillis"    # J

    .line 5830
    move-object v0, p0

    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v1

    .line 5831
    .local v1, "attributionCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_7
    if-ltz v2, :cond_43

    .line 5832
    invoke-virtual {p0, v2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v13

    .line 5833
    .local v13, "attributionOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    and-int/lit8 v3, p3, 0x4

    if-eqz v3, :cond_23

    .line 5834
    invoke-virtual {v13}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getTag()Ljava/lang/String;

    move-result-object v3

    .line 5833
    move-object/from16 v14, p1

    invoke-static {v14, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 5835
    iget-object v3, v0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_40

    .line 5833
    :cond_23
    move-object/from16 v14, p1

    .line 5837
    :cond_25
    move-object v3, v13

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    invoke-static/range {v3 .. v12}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->-$$Nest$mfilter(Landroid/app/AppOpsManager$AttributedHistoricalOps;[Ljava/lang/String;IIDJJ)V

    .line 5839
    invoke-virtual {v13}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v3

    if-nez v3, :cond_40

    .line 5840
    iget-object v3, v0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 5831
    .end local v13    # "attributionOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    :cond_40
    :goto_40
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    :cond_43
    move-object/from16 v14, p1

    .line 5844
    .end local v2    # "i":I
    return-void
.end method

.method private getOrCreateAttributedHistoricalOps(Ljava/lang/String;)Landroid/app/AppOpsManager$AttributedHistoricalOps;
    .registers 4
    .param p1, "attributionTag"    # Ljava/lang/String;

    .line 5901
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_b

    .line 5902
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    .line 5904
    :cond_b
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$AttributedHistoricalOps;

    .line 5906
    .local v0, "historicalAttributionOp":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    if-nez v0, :cond_20

    .line 5907
    new-instance v1, Landroid/app/AppOpsManager$AttributedHistoricalOps;

    invoke-direct {v1, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 5908
    iget-object v1, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5910
    :cond_20
    return-object v0
.end method

.method private increaseAccessCount(ILjava/lang/String;IIJ)V
    .registers 13
    .param p1, "opCode"    # I
    .param p2, "attributionTag"    # Ljava/lang/String;
    .param p3, "uidState"    # I
    .param p4, "flags"    # I
    .param p5, "increment"    # J

    .line 5867
    invoke-direct {p0, p2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOrCreateAttributedHistoricalOps(Ljava/lang/String;)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v0

    move v1, p1

    move v2, p3

    move v3, p4

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->-$$Nest$mincreaseAccessCount(Landroid/app/AppOpsManager$AttributedHistoricalOps;IIIJ)V

    .line 5869
    return-void
.end method

.method private increaseAccessDuration(ILjava/lang/String;IIJ)V
    .registers 13
    .param p1, "opCode"    # I
    .param p2, "attributionTag"    # Ljava/lang/String;
    .param p3, "uidState"    # I
    .param p4, "flags"    # I
    .param p5, "increment"    # J

    .line 5879
    invoke-direct {p0, p2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOrCreateAttributedHistoricalOps(Ljava/lang/String;)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v0

    move v1, p1

    move v2, p3

    move v3, p4

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->-$$Nest$mincreaseAccessDuration(Landroid/app/AppOpsManager$AttributedHistoricalOps;IIIJ)V

    .line 5881
    return-void
.end method

.method private increaseRejectCount(ILjava/lang/String;IIJ)V
    .registers 13
    .param p1, "opCode"    # I
    .param p2, "attributionTag"    # Ljava/lang/String;
    .param p3, "uidState"    # I
    .param p4, "flags"    # I
    .param p5, "increment"    # J

    .line 5873
    invoke-direct {p0, p2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOrCreateAttributedHistoricalOps(Ljava/lang/String;)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v0

    move v1, p1

    move v2, p3

    move v3, p4

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->-$$Nest$mincreaseRejectCount(Landroid/app/AppOpsManager$AttributedHistoricalOps;IIIJ)V

    .line 5875
    return-void
.end method

.method private isEmpty()Z
    .registers 5

    .line 5855
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v0

    .line 5856
    .local v0, "attributionCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_1b

    .line 5857
    iget-object v2, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$AttributedHistoricalOps;

    .line 5858
    .local v2, "attributionOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    invoke-static {v2}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->-$$Nest$misEmpty(Landroid/app/AppOpsManager$AttributedHistoricalOps;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 5859
    const/4 v3, 0x0

    return v3

    .line 5856
    .end local v2    # "attributionOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    :cond_18
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 5862
    .end local v1    # "i":I
    :cond_1b
    const/4 v1, 0x1

    return v1
.end method

.method private merge(Landroid/app/AppOpsManager$HistoricalPackageOps;)V
    .registers 8
    .param p1, "other"    # Landroid/app/AppOpsManager$HistoricalPackageOps;

    .line 5810
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v0

    .line 5811
    .local v0, "attributionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_31

    .line 5812
    invoke-virtual {p1, v1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v2

    .line 5813
    .local v2, "otherAttributionOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    nop

    .line 5814
    invoke-virtual {v2}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getTag()Ljava/lang/String;

    move-result-object v3

    .line 5813
    invoke-virtual {p0, v3}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOps(Ljava/lang/String;)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v3

    .line 5815
    .local v3, "thisAttributionOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    if-eqz v3, :cond_1a

    .line 5816
    invoke-static {v3, v2}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->-$$Nest$mmerge(Landroid/app/AppOpsManager$AttributedHistoricalOps;Landroid/app/AppOpsManager$AttributedHistoricalOps;)V

    goto :goto_2e

    .line 5818
    :cond_1a
    iget-object v4, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    if-nez v4, :cond_25

    .line 5819
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    .line 5821
    :cond_25
    iget-object v4, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5811
    .end local v2    # "otherAttributionOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    .end local v3    # "thisAttributionOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    :goto_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 5825
    .end local v1    # "i":I
    :cond_31
    return-void
.end method

.method private splice(D)Landroid/app/AppOpsManager$HistoricalPackageOps;
    .registers 10
    .param p1, "fractionToRemove"    # D

    .line 5791
    const/4 v0, 0x0

    .line 5792
    .local v0, "splice":Landroid/app/AppOpsManager$HistoricalPackageOps;
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v1

    .line 5793
    .local v1, "attributionCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_33

    .line 5794
    invoke-virtual {p0, v2}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v3

    .line 5795
    .local v3, "origOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    invoke-static {v3, p1, p2}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->-$$Nest$msplice(Landroid/app/AppOpsManager$AttributedHistoricalOps;D)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v4

    .line 5796
    .local v4, "spliceOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    if-eqz v4, :cond_30

    .line 5797
    if-nez v0, :cond_1c

    .line 5798
    new-instance v5, Landroid/app/AppOpsManager$HistoricalPackageOps;

    iget-object v6, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mPackageName:Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/app/AppOpsManager$HistoricalPackageOps;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    .line 5800
    :cond_1c
    iget-object v5, v0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    if-nez v5, :cond_27

    .line 5801
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, v0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    .line 5803
    :cond_27
    iget-object v5, v0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5793
    .end local v3    # "origOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    .end local v4    # "spliceOps":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 5806
    .end local v2    # "i":I
    :cond_33
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 5999
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 6023
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 6024
    return v0

    .line 6026
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_33

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_33

    .line 6029
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/AppOpsManager$HistoricalPackageOps;

    .line 6030
    .local v2, "other":Landroid/app/AppOpsManager$HistoricalPackageOps;
    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mPackageName:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/AppOpsManager$HistoricalPackageOps;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 6031
    return v1

    .line 6033
    :cond_20
    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    if-nez v3, :cond_29

    .line 6034
    iget-object v3, v2, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    if-eqz v3, :cond_32

    .line 6035
    return v1

    .line 6037
    :cond_29
    iget-object v4, v2, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 6038
    return v1

    .line 6040
    :cond_32
    return v0

    .line 6027
    .end local v2    # "other":Landroid/app/AppOpsManager$HistoricalPackageOps;
    :cond_33
    :goto_33
    return v1
.end method

.method public getAttributedOps(Ljava/lang/String;)Landroid/app/AppOpsManager$AttributedHistoricalOps;
    .registers 3
    .param p1, "attributionTag"    # Ljava/lang/String;

    .line 6089
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_6

    .line 6090
    const/4 v0, 0x0

    return-object v0

    .line 6092
    :cond_6
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$AttributedHistoricalOps;

    return-object v0
.end method

.method public getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;
    .registers 3
    .param p1, "index"    # I

    .line 6075
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_b

    .line 6078
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$AttributedHistoricalOps;

    return-object v0

    .line 6076
    :cond_b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getAttributedOpsCount()I
    .registers 2

    .line 6059
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_6

    .line 6060
    const/4 v0, 0x0

    return v0

    .line 6062
    :cond_6
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method

.method public getOp(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalOp;
    .registers 8
    .param p1, "opName"    # Ljava/lang/String;

    .line 5977
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 5978
    return-object v1

    .line 5981
    :cond_6
    const/4 v0, 0x0

    .line 5982
    .local v0, "combinedOp":Landroid/app/AppOpsManager$HistoricalOp;
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v2

    .line 5983
    .local v2, "numAttributions":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v2, :cond_27

    .line 5984
    invoke-virtual {p0, v3}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOp(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v4

    .line 5985
    .local v4, "attributionOp":Landroid/app/AppOpsManager$HistoricalOp;
    if-eqz v4, :cond_24

    .line 5986
    if-nez v0, :cond_21

    .line 5987
    new-instance v5, Landroid/app/AppOpsManager$HistoricalOp;

    invoke-direct {v5, v4, v1}, Landroid/app/AppOpsManager$HistoricalOp;-><init>(Landroid/app/AppOpsManager$HistoricalOp;Landroid/app/AppOpsManager$HistoricalOp-IA;)V

    move-object v0, v5

    goto :goto_24

    .line 5989
    :cond_21
    invoke-static {v0, v4}, Landroid/app/AppOpsManager$HistoricalOp;->-$$Nest$mmerge(Landroid/app/AppOpsManager$HistoricalOp;Landroid/app/AppOpsManager$HistoricalOp;)V

    .line 5983
    .end local v4    # "attributionOp":Landroid/app/AppOpsManager$HistoricalOp;
    :cond_24
    :goto_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 5994
    .end local v3    # "i":I
    :cond_27
    return-object v0
.end method

.method public getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;
    .registers 8
    .param p1, "index"    # I

    .line 5947
    const/4 v0, 0x0

    .line 5948
    .local v0, "numOpsFound":I
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v1

    .line 5950
    .local v1, "numAttributions":I
    const/4 v2, 0x0

    .local v2, "code":I
    :goto_6
    const/16 v3, 0x88

    if-ge v2, v3, :cond_2b

    .line 5951
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v3

    .line 5953
    .local v3, "opName":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "attributionNum":I
    :goto_f
    if-ge v4, v1, :cond_28

    .line 5954
    invoke-virtual {p0, v4}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOp(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v5

    if-eqz v5, :cond_25

    .line 5955
    if-ne v0, p1, :cond_22

    .line 5956
    invoke-virtual {p0, v3}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getOp(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v5

    return-object v5

    .line 5958
    :cond_22
    add-int/lit8 v0, v0, 0x1

    .line 5959
    goto :goto_28

    .line 5953
    :cond_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 5950
    .end local v3    # "opName":Ljava/lang/String;
    .end local v4    # "attributionNum":I
    :cond_28
    :goto_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 5965
    .end local v2    # "code":I
    :cond_2b
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method public getOpCount()I
    .registers 7

    .line 5920
    const/4 v0, 0x0

    .line 5921
    .local v0, "numOps":I
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v1

    .line 5923
    .local v1, "numAttributions":I
    const/4 v2, 0x0

    .local v2, "code":I
    :goto_6
    const/16 v3, 0x88

    if-ge v2, v3, :cond_24

    .line 5924
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v3

    .line 5926
    .local v3, "opName":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "attributionNum":I
    :goto_f
    if-ge v4, v1, :cond_21

    .line 5927
    invoke-virtual {p0, v4}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOp(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v5

    if-eqz v5, :cond_1e

    .line 5928
    add-int/lit8 v0, v0, 0x1

    .line 5929
    goto :goto_21

    .line 5926
    :cond_1e
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 5923
    .end local v3    # "opName":Ljava/lang/String;
    .end local v4    # "attributionNum":I
    :cond_21
    :goto_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 5934
    .end local v2    # "code":I
    :cond_24
    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 5896
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 6045
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    .line 6046
    .local v0, "result":I
    :goto_b
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    if-eqz v3, :cond_16

    .line 6047
    invoke-virtual {v3}, Landroid/util/ArrayMap;->hashCode()I

    move-result v1

    goto :goto_17

    :cond_16
    nop

    :goto_17
    add-int/2addr v2, v1

    .line 6048
    .end local v0    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 6004
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6005
    iget-object v0, p0, Landroid/app/AppOpsManager$HistoricalPackageOps;->mAttributedHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedArrayMap(Landroid/util/ArrayMap;I)V

    .line 6006
    return-void
.end method

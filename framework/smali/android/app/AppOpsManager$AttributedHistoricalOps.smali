.class public final Landroid/app/AppOpsManager$AttributedHistoricalOps;
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
    name = "AttributedHistoricalOps"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/AppOpsManager$AttributedHistoricalOps;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHistoricalOps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/AppOpsManager$HistoricalOp;",
            ">;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$maccept(Landroid/app/AppOpsManager$AttributedHistoricalOps;Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$maddDiscreteAccess(Landroid/app/AppOpsManager$AttributedHistoricalOps;IIIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->addDiscreteAccess(IIIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfilter(Landroid/app/AppOpsManager$AttributedHistoricalOps;[Ljava/lang/String;IIDJJ)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->filter([Ljava/lang/String;IIDJJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mincreaseAccessCount(Landroid/app/AppOpsManager$AttributedHistoricalOps;IIIJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->increaseAccessCount(IIIJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mincreaseAccessDuration(Landroid/app/AppOpsManager$AttributedHistoricalOps;IIIJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->increaseAccessDuration(IIIJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mincreaseRejectCount(Landroid/app/AppOpsManager$AttributedHistoricalOps;IIIJ)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->increaseRejectCount(IIIJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misEmpty(Landroid/app/AppOpsManager$AttributedHistoricalOps;)Z
    .registers 1

    invoke-direct {p0}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->isEmpty()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mmerge(Landroid/app/AppOpsManager$AttributedHistoricalOps;Landroid/app/AppOpsManager$AttributedHistoricalOps;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->merge(Landroid/app/AppOpsManager$AttributedHistoricalOps;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msplice(Landroid/app/AppOpsManager$AttributedHistoricalOps;D)Landroid/app/AppOpsManager$AttributedHistoricalOps;
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->splice(D)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 6384
    new-instance v0, Landroid/app/AppOpsManager$AttributedHistoricalOps$1;

    invoke-direct {v0}, Landroid/app/AppOpsManager$AttributedHistoricalOps$1;-><init>()V

    sput-object v0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/app/AppOpsManager$AttributedHistoricalOps;)V
    .registers 8
    .param p1, "other"    # Landroid/app/AppOpsManager$AttributedHistoricalOps;

    .line 6118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6119
    iget-object v0, p1, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    .line 6120
    invoke-virtual {p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v0

    .line 6121
    .local v0, "opCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    if-ge v1, v0, :cond_2f

    .line 6122
    invoke-virtual {p1, v1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v2

    .line 6123
    .local v2, "origOp":Landroid/app/AppOpsManager$HistoricalOp;
    new-instance v3, Landroid/app/AppOpsManager$HistoricalOp;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Landroid/app/AppOpsManager$HistoricalOp;-><init>(Landroid/app/AppOpsManager$HistoricalOp;Landroid/app/AppOpsManager$HistoricalOp-IA;)V

    .line 6124
    .local v3, "cloneOp":Landroid/app/AppOpsManager$HistoricalOp;
    iget-object v4, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    if-nez v4, :cond_23

    .line 6125
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4, v0}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v4, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    .line 6127
    :cond_23
    iget-object v4, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOp;->getOpName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6121
    .end local v2    # "origOp":Landroid/app/AppOpsManager$HistoricalOp;
    .end local v3    # "cloneOp":Landroid/app/AppOpsManager$HistoricalOp;
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 6129
    .end local v1    # "i":I
    :cond_2f
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/AppOpsManager$AttributedHistoricalOps;Landroid/app/AppOpsManager$AttributedHistoricalOps-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;-><init>(Landroid/app/AppOpsManager$AttributedHistoricalOps;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 6
    .param p1, "in"    # Landroid/os/Parcel;

    .line 6365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6369
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 6370
    .local v0, "flg":B
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_d

    const/4 v1, 0x0

    goto :goto_11

    :cond_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 6371
    .local v1, "attributionTag":Ljava/lang/String;
    :goto_11
    const/4 v2, 0x0

    .line 6372
    .local v2, "historicalOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/AppOpsManager$HistoricalOp;>;"
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_25

    .line 6373
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    move-object v2, v3

    .line 6374
    const-class v3, Landroid/app/AppOpsManager$HistoricalOp;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 6377
    :cond_25
    iput-object v1, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    .line 6378
    iput-object v2, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    .line 6381
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 6114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6115
    iput-object p1, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    .line 6116
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/util/ArrayMap;)V
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/app/AppOpsManager$HistoricalOp;",
            ">;)V"
        }
    .end annotation

    .line 6300
    .local p2, "historicalOps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/app/AppOpsManager$HistoricalOp;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6301
    iput-object p1, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    .line 6302
    iput-object p2, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    .line 6305
    return-void
.end method

.method private accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V
    .registers 5
    .param p1, "visitor"    # Landroid/app/AppOpsManager$HistoricalOpsVisitor;

    .line 6255
    invoke-interface {p1, p0}, Landroid/app/AppOpsManager$HistoricalOpsVisitor;->visitHistoricalAttributionOps(Landroid/app/AppOpsManager$AttributedHistoricalOps;)V

    .line 6256
    invoke-virtual {p0}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v0

    .line 6257
    .local v0, "opCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v0, :cond_14

    .line 6258
    invoke-virtual {p0, v1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/app/AppOpsManager$HistoricalOp;->-$$Nest$maccept(Landroid/app/AppOpsManager$HistoricalOp;Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    .line 6257
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 6260
    .end local v1    # "i":I
    :cond_14
    return-void
.end method

.method private addDiscreteAccess(IIIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V
    .registers 17
    .param p1, "opCode"    # I
    .param p2, "uidState"    # I
    .param p3, "flag"    # I
    .param p4, "discreteAccessTime"    # J
    .param p6, "discreteAccessDuration"    # J
    .param p8, "proxy"    # Landroid/app/AppOpsManager$OpEventProxyInfo;

    .line 6210
    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOrCreateHistoricalOp(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    move-wide v5, p6

    move-object/from16 v7, p8

    invoke-static/range {v0 .. v7}, Landroid/app/AppOpsManager$HistoricalOp;->-$$Nest$maddDiscreteAccess(Landroid/app/AppOpsManager$HistoricalOp;IIJJLandroid/app/AppOpsManager$OpEventProxyInfo;)V

    .line 6212
    return-void
.end method

.method private filter([Ljava/lang/String;IIDJJ)V
    .registers 23
    .param p1, "opNames"    # [Ljava/lang/String;
    .param p2, "filter"    # I
    .param p3, "historyFilter"    # I
    .param p4, "scaleFactor"    # D
    .param p6, "beginTimeMillis"    # J
    .param p8, "endTimeMillis"    # J

    .line 6169
    move-object v0, p0

    invoke-virtual {p0}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v1

    .line 6170
    .local v1, "opCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_7
    if-ltz v2, :cond_36

    .line 6171
    iget-object v3, v0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOp;

    .line 6172
    .local v3, "op":Landroid/app/AppOpsManager$HistoricalOp;
    and-int/lit8 v4, p2, 0x8

    if-eqz v4, :cond_26

    .line 6173
    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOp;->getOpName()Ljava/lang/String;

    move-result-object v4

    .line 6172
    move-object v12, p1

    invoke-static {p1, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 6174
    iget-object v4, v0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    goto :goto_33

    .line 6172
    :cond_26
    move-object v12, p1

    .line 6176
    :cond_27
    move-object v4, v3

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-static/range {v4 .. v11}, Landroid/app/AppOpsManager$HistoricalOp;->-$$Nest$mfilter(Landroid/app/AppOpsManager$HistoricalOp;IDJJ)V

    .line 6170
    .end local v3    # "op":Landroid/app/AppOpsManager$HistoricalOp;
    :goto_33
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    :cond_36
    move-object v12, p1

    .line 6179
    .end local v2    # "i":I
    return-void
.end method

.method private getOrCreateHistoricalOp(I)Landroid/app/AppOpsManager$HistoricalOp;
    .registers 5
    .param p1, "opCode"    # I

    .line 6263
    iget-object v0, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_b

    .line 6264
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    .line 6266
    :cond_b
    sget-object v0, Landroid/app/AppOpsManager;->sAppOpInfos:[Landroid/app/AppOpInfo;

    aget-object v0, v0, p1

    iget-object v0, v0, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    .line 6267
    .local v0, "opStr":Ljava/lang/String;
    iget-object v1, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$HistoricalOp;

    .line 6268
    .local v1, "op":Landroid/app/AppOpsManager$HistoricalOp;
    if-nez v1, :cond_26

    .line 6269
    new-instance v2, Landroid/app/AppOpsManager$HistoricalOp;

    invoke-direct {v2, p1}, Landroid/app/AppOpsManager$HistoricalOp;-><init>(I)V

    move-object v1, v2

    .line 6270
    iget-object v2, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6272
    :cond_26
    return-object v1
.end method

.method private increaseAccessCount(IIIJ)V
    .registers 7
    .param p1, "opCode"    # I
    .param p2, "uidState"    # I
    .param p3, "flags"    # I
    .param p4, "increment"    # J

    .line 6194
    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOrCreateHistoricalOp(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v0

    invoke-static {v0, p2, p3, p4, p5}, Landroid/app/AppOpsManager$HistoricalOp;->-$$Nest$mincreaseAccessCount(Landroid/app/AppOpsManager$HistoricalOp;IIJ)V

    .line 6195
    return-void
.end method

.method private increaseAccessDuration(IIIJ)V
    .registers 7
    .param p1, "opCode"    # I
    .param p2, "uidState"    # I
    .param p3, "flags"    # I
    .param p4, "increment"    # J

    .line 6204
    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOrCreateHistoricalOp(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v0

    invoke-static {v0, p2, p3, p4, p5}, Landroid/app/AppOpsManager$HistoricalOp;->-$$Nest$mincreaseAccessDuration(Landroid/app/AppOpsManager$HistoricalOp;IIJ)V

    .line 6205
    return-void
.end method

.method private increaseRejectCount(IIIJ)V
    .registers 7
    .param p1, "opCode"    # I
    .param p2, "uidState"    # I
    .param p3, "flags"    # I
    .param p4, "increment"    # J

    .line 6199
    invoke-direct {p0, p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOrCreateHistoricalOp(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v0

    invoke-static {v0, p2, p3, p4, p5}, Landroid/app/AppOpsManager$HistoricalOp;->-$$Nest$mincreaseRejectCount(Landroid/app/AppOpsManager$HistoricalOp;IIJ)V

    .line 6200
    return-void
.end method

.method private isEmpty()Z
    .registers 5

    .line 6182
    invoke-virtual {p0}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v0

    .line 6183
    .local v0, "opCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_1b

    .line 6184
    iget-object v2, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$HistoricalOp;

    .line 6185
    .local v2, "op":Landroid/app/AppOpsManager$HistoricalOp;
    invoke-static {v2}, Landroid/app/AppOpsManager$HistoricalOp;->-$$Nest$misEmpty(Landroid/app/AppOpsManager$HistoricalOp;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 6186
    const/4 v3, 0x0

    return v3

    .line 6183
    .end local v2    # "op":Landroid/app/AppOpsManager$HistoricalOp;
    :cond_18
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 6189
    .end local v1    # "i":I
    :cond_1b
    const/4 v1, 0x1

    return v1
.end method

.method private merge(Landroid/app/AppOpsManager$AttributedHistoricalOps;)V
    .registers 8
    .param p1, "other"    # Landroid/app/AppOpsManager$AttributedHistoricalOps;

    .line 6151
    invoke-virtual {p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v0

    .line 6152
    .local v0, "opCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_30

    .line 6153
    invoke-virtual {p1, v1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v2

    .line 6154
    .local v2, "otherOp":Landroid/app/AppOpsManager$HistoricalOp;
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOp;->getOpName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOp(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v3

    .line 6155
    .local v3, "thisOp":Landroid/app/AppOpsManager$HistoricalOp;
    if-eqz v3, :cond_19

    .line 6156
    invoke-static {v3, v2}, Landroid/app/AppOpsManager$HistoricalOp;->-$$Nest$mmerge(Landroid/app/AppOpsManager$HistoricalOp;Landroid/app/AppOpsManager$HistoricalOp;)V

    goto :goto_2d

    .line 6158
    :cond_19
    iget-object v4, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    if-nez v4, :cond_24

    .line 6159
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    iput-object v4, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    .line 6161
    :cond_24
    iget-object v4, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOp;->getOpName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6152
    .end local v2    # "otherOp":Landroid/app/AppOpsManager$HistoricalOp;
    .end local v3    # "thisOp":Landroid/app/AppOpsManager$HistoricalOp;
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 6164
    .end local v1    # "i":I
    :cond_30
    return-void
.end method

.method private splice(D)Landroid/app/AppOpsManager$AttributedHistoricalOps;
    .registers 11
    .param p1, "fractionToRemove"    # D

    .line 6132
    const/4 v0, 0x0

    .line 6133
    .local v0, "splice":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    invoke-virtual {p0}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v1

    .line 6134
    .local v1, "opCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_34

    .line 6135
    invoke-virtual {p0, v2}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v3

    .line 6136
    .local v3, "origOps":Landroid/app/AppOpsManager$HistoricalOp;
    invoke-static {v3, p1, p2}, Landroid/app/AppOpsManager$HistoricalOp;->-$$Nest$msplice(Landroid/app/AppOpsManager$HistoricalOp;D)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v4

    .line 6137
    .local v4, "spliceOps":Landroid/app/AppOpsManager$HistoricalOp;
    if-eqz v4, :cond_31

    .line 6138
    if-nez v0, :cond_1d

    .line 6139
    new-instance v5, Landroid/app/AppOpsManager$AttributedHistoricalOps;

    iget-object v6, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/app/AppOpsManager$AttributedHistoricalOps;-><init>(Ljava/lang/String;Landroid/util/ArrayMap;)V

    move-object v0, v5

    .line 6141
    :cond_1d
    iget-object v5, v0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    if-nez v5, :cond_28

    .line 6142
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, v0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    .line 6144
    :cond_28
    iget-object v5, v0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/app/AppOpsManager$HistoricalOp;->getOpName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6134
    .end local v3    # "origOps":Landroid/app/AppOpsManager$HistoricalOp;
    .end local v4    # "spliceOps":Landroid/app/AppOpsManager$HistoricalOp;
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 6147
    .end local v2    # "i":I
    :cond_34
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 6360
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 6322
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 6323
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2c

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_2c

    .line 6325
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/app/AppOpsManager$AttributedHistoricalOps;

    .line 6327
    .local v2, "that":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    iget-object v3, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    iget-object v4, v2, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    .line 6328
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    iget-object v3, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    iget-object v4, v2, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    .line 6329
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    move v0, v1

    .line 6327
    :goto_2b
    return v0

    .line 6323
    .end local v2    # "that":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    :cond_2c
    :goto_2c
    return v1
.end method

.method public getOp(Ljava/lang/String;)Landroid/app/AppOpsManager$HistoricalOp;
    .registers 3
    .param p1, "opName"    # Ljava/lang/String;

    .line 6248
    iget-object v0, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_6

    .line 6249
    const/4 v0, 0x0

    return-object v0

    .line 6251
    :cond_6
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$HistoricalOp;

    return-object v0
.end method

.method public getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;
    .registers 3
    .param p1, "index"    # I

    .line 6235
    iget-object v0, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    if-eqz v0, :cond_b

    .line 6238
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$HistoricalOp;

    return-object v0

    .line 6236
    :cond_b
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getOpCount()I
    .registers 2

    .line 6221
    iget-object v0, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    if-nez v0, :cond_6

    .line 6222
    const/4 v0, 0x0

    return v0

    .line 6224
    :cond_6
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .registers 2

    .line 6312
    iget-object v0, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 6338
    const/4 v0, 0x1

    .line 6339
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 6340
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6341
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 6350
    const/4 v0, 0x0

    .line 6351
    .local v0, "flg":B
    iget-object v1, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x1

    int-to-byte v0, v1

    .line 6352
    :cond_8
    iget-object v1, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    if-eqz v1, :cond_f

    or-int/lit8 v1, v0, 0x2

    int-to-byte v0, v1

    .line 6353
    :cond_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 6354
    iget-object v1, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mTag:Ljava/lang/String;

    if-eqz v1, :cond_19

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6355
    :cond_19
    iget-object v1, p0, Landroid/app/AppOpsManager$AttributedHistoricalOps;->mHistoricalOps:Landroid/util/ArrayMap;

    if-eqz v1, :cond_20

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 6356
    :cond_20
    return-void
.end method

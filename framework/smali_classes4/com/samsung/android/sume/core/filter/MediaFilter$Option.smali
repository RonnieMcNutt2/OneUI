.class public Lcom/samsung/android/sume/core/filter/MediaFilter$Option;
.super Lcom/samsung/android/sume/core/types/OptionBase;
.source "MediaFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sume/core/filter/MediaFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Option"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/sume/core/filter/MediaFilter$Option;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 83
    const-class v0, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    invoke-static {v0}, Lcom/samsung/android/sume/core/Def;->tagOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->TAG:Ljava/lang/String;

    .line 191
    new-instance v0, Lcom/samsung/android/sume/core/filter/MediaFilter$Option$1;

    invoke-direct {v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/sume/core/types/OptionBase;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 88
    invoke-direct {p0, p1}, Lcom/samsung/android/sume/core/types/OptionBase;-><init>(Landroid/os/Parcel;)V

    .line 89
    return-void
.end method


# virtual methods
.method public asInputOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;
    .registers 2

    .line 156
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->remove(I)Ljava/lang/Object;

    .line 157
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->set(I)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object v0

    return-object v0
.end method

.method public asOutputOption()Lcom/samsung/android/sume/core/filter/MediaFilter$Option;
    .registers 2

    .line 165
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->remove(I)Ljava/lang/Object;

    .line 166
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->set(I)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object v0

    return-object v0
.end method

.method public getPad()Landroid/util/Pair;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/sume/core/types/PadType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 100
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    return-object v0
.end method

.method public getSplitType()Lcom/samsung/android/sume/core/types/SplitType;
    .registers 2

    .line 92
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sume/core/types/SplitType;

    return-object v0
.end method

.method public getUseExternalBufferComposer()Z
    .registers 3

    .line 116
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isAllowPartialConnection()Z
    .registers 3

    .line 108
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isBatchIO()Z
    .registers 3

    .line 132
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isIgnorableFilter()Z
    .registers 3

    .line 174
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isInputOption()Z
    .registers 3

    .line 161
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isInputWithEvaluationValue()Z
    .registers 3

    .line 148
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isKeepFilterDatatype()Z
    .registers 3

    .line 124
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isOutputOption()Z
    .registers 3

    .line 170
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public isWaitToReceiveAll()Z
    .registers 3

    .line 140
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public set(I)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;
    .registers 2
    .param p1, "option"    # I

    .line 182
    invoke-super {p0, p1}, Lcom/samsung/android/sume/core/types/OptionBase;->set(I)Lcom/samsung/android/sume/core/types/OptionBase;

    .line 183
    return-object p0
.end method

.method public set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;
    .registers 3
    .param p1, "option"    # I
    .param p2, "data"    # Ljava/lang/Object;

    .line 187
    invoke-super {p0, p1, p2}, Lcom/samsung/android/sume/core/types/OptionBase;->set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/types/OptionBase;

    .line 188
    return-object p0
.end method

.method public bridge synthetic set(I)Lcom/samsung/android/sume/core/types/OptionBase;
    .registers 2

    .line 82
    invoke-virtual {p0, p1}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->set(I)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/types/OptionBase;
    .registers 3

    .line 82
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    move-result-object p1

    return-object p1
.end method

.method public setAllowPartialConnection(Z)V
    .registers 4
    .param p1, "allowPartialConnection"    # Z

    .line 112
    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    .line 113
    return-void
.end method

.method public setBatchIO(Z)V
    .registers 4
    .param p1, "batchIO"    # Z

    .line 136
    const/4 v0, 0x5

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    .line 137
    return-void
.end method

.method public setFilterIgnorable(Z)V
    .registers 4
    .param p1, "ignorable"    # Z

    .line 178
    const/16 v0, 0xa

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    .line 179
    return-void
.end method

.method public setInputWithEvaluationValue(Z)V
    .registers 4
    .param p1, "inputWithEvaluationValue"    # Z

    .line 152
    const/4 v0, 0x7

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    .line 153
    return-void
.end method

.method public setKeepFilterDatatype(Z)V
    .registers 4
    .param p1, "keepFilterDatatype"    # Z

    .line 128
    const/4 v0, 0x4

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    .line 129
    return-void
.end method

.method public setPad(Landroid/util/Pair;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/samsung/android/sume/core/types/PadType;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 104
    .local p1, "pad":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/samsung/android/sume/core/types/PadType;Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    .line 105
    return-void
.end method

.method public setSplitType(Lcom/samsung/android/sume/core/types/SplitType;)V
    .registers 3
    .param p1, "splitType"    # Lcom/samsung/android/sume/core/types/SplitType;

    .line 96
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    .line 97
    return-void
.end method

.method public setUseExternalBufferComposer(Z)V
    .registers 4
    .param p1, "useExternalBufferComposer"    # Z

    .line 120
    const/4 v0, 0x3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    .line 121
    return-void
.end method

.method public setWaitToReceiveAll(Z)V
    .registers 4
    .param p1, "waitToReceiveAll"    # Z

    .line 144
    const/4 v0, 0x6

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/sume/core/filter/MediaFilter$Option;->set(ILjava/lang/Object;)Lcom/samsung/android/sume/core/filter/MediaFilter$Option;

    .line 145
    return-void
.end method

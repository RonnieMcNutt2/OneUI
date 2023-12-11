.class public final Lvendor/samsung/hardware/thermal/V1_0/SehTempStatus;
.super Ljava/lang/Object;
.source "SehTempStatus.java"


# static fields
.field public static final DISABLED:I = -0x309

.field public static final NOT_EXIST:I = -0x3e7

.field public static final NOT_READABLE:I = -0x378


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .registers 5
    .param p0, "o"    # I

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 24
    .local v1, "flipped":I
    and-int/lit16 v2, p0, -0x3e7

    const/16 v3, -0x3e7

    if-ne v2, v3, :cond_13

    .line 25
    const-string v2, "NOT_EXIST"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    or-int/lit16 v1, v1, -0x3e7

    .line 28
    :cond_13
    and-int/lit16 v2, p0, -0x378

    const/16 v3, -0x378

    if-ne v2, v3, :cond_20

    .line 29
    const-string v2, "NOT_READABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    or-int/lit16 v1, v1, -0x378

    .line 32
    :cond_20
    and-int/lit16 v2, p0, -0x309

    const/16 v3, -0x309

    if-ne v2, v3, :cond_2d

    .line 33
    const-string v2, "DISABLED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    or-int/lit16 v1, v1, -0x309

    .line 36
    :cond_2d
    if-eq p0, v1, :cond_4b

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_4b
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 9
    const/16 v0, -0x3e7

    if-ne p0, v0, :cond_7

    .line 10
    const-string v0, "NOT_EXIST"

    return-object v0

    .line 12
    :cond_7
    const/16 v0, -0x378

    if-ne p0, v0, :cond_e

    .line 13
    const-string v0, "NOT_READABLE"

    return-object v0

    .line 15
    :cond_e
    const/16 v0, -0x309

    if-ne p0, v0, :cond_15

    .line 16
    const-string v0, "DISABLED"

    return-object v0

    .line 18
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

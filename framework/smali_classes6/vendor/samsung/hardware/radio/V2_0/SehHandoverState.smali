.class public final Lvendor/samsung/hardware/radio/V2_0/SehHandoverState;
.super Ljava/lang/Object;
.source "SehHandoverState.java"


# static fields
.field public static final INTER_HANDOVER_FAILED:I = 0x1

.field public static final INTER_HANDOVER_STARTED:I = 0x0

.field public static final INTER_HANDOVER_SUCCESS:I = 0x2

.field public static final INTRA_HANDOVER_FAILED:I = 0x4

.field public static final INTRA_HANDOVER_STARTED:I = 0x3

.field public static final INTRA_HANDOVER_SUCCESS:I = 0x5

.field public static final MEASUREMENT_REPORT_DELIVERED:I = 0x6

.field public static final UNKNOWN:I = -0x1


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

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 68
    .local v1, "flipped":I
    and-int/lit8 v2, p0, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_12

    .line 69
    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    or-int/lit8 v1, v1, -0x1

    .line 72
    :cond_12
    const-string v2, "INTER_HANDOVER_STARTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_23

    .line 74
    const-string v2, "INTER_HANDOVER_FAILED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    or-int/lit8 v1, v1, 0x1

    .line 77
    :cond_23
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2f

    .line 78
    const-string v2, "INTER_HANDOVER_SUCCESS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    or-int/lit8 v1, v1, 0x2

    .line 81
    :cond_2f
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3b

    .line 82
    const-string v2, "INTRA_HANDOVER_STARTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    or-int/lit8 v1, v1, 0x3

    .line 85
    :cond_3b
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_47

    .line 86
    const-string v2, "INTRA_HANDOVER_FAILED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    or-int/lit8 v1, v1, 0x4

    .line 89
    :cond_47
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_53

    .line 90
    const-string v2, "INTRA_HANDOVER_SUCCESS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    or-int/lit8 v1, v1, 0x5

    .line 93
    :cond_53
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5f

    .line 94
    const-string v2, "MEASUREMENT_REPORT_DELIVERED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    or-int/lit8 v1, v1, 0x6

    .line 97
    :cond_5f
    if-eq p0, v1, :cond_7d

    .line 98
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

    .line 100
    :cond_7d
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 38
    const/4 v0, -0x1

    if-ne p0, v0, :cond_6

    .line 39
    const-string v0, "UNKNOWN"

    return-object v0

    .line 41
    :cond_6
    if-nez p0, :cond_b

    .line 42
    const-string v0, "INTER_HANDOVER_STARTED"

    return-object v0

    .line 44
    :cond_b
    const/4 v0, 0x1

    if-ne p0, v0, :cond_11

    .line 45
    const-string v0, "INTER_HANDOVER_FAILED"

    return-object v0

    .line 47
    :cond_11
    const/4 v0, 0x2

    if-ne p0, v0, :cond_17

    .line 48
    const-string v0, "INTER_HANDOVER_SUCCESS"

    return-object v0

    .line 50
    :cond_17
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1d

    .line 51
    const-string v0, "INTRA_HANDOVER_STARTED"

    return-object v0

    .line 53
    :cond_1d
    const/4 v0, 0x4

    if-ne p0, v0, :cond_23

    .line 54
    const-string v0, "INTRA_HANDOVER_FAILED"

    return-object v0

    .line 56
    :cond_23
    const/4 v0, 0x5

    if-ne p0, v0, :cond_29

    .line 57
    const-string v0, "INTRA_HANDOVER_SUCCESS"

    return-object v0

    .line 59
    :cond_29
    const/4 v0, 0x6

    if-ne p0, v0, :cond_2f

    .line 60
    const-string v0, "MEASUREMENT_REPORT_DELIVERED"

    return-object v0

    .line 62
    :cond_2f
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

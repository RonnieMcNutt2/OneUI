.class public final Lvendor/samsung/hardware/thermal/V1_0/SehTemperatureType;
.super Ljava/lang/Object;
.source "SehTemperatureType.java"


# static fields
.field public static final BATTERY:I = 0x2

.field public static final BCL_CURRENT:I = 0x7

.field public static final BCL_PERCENTAGE:I = 0x8

.field public static final BCL_VOLTAGE:I = 0x6

.field public static final CPU:I = 0x0

.field public static final GPU:I = 0x1

.field public static final NPU:I = 0x9

.field public static final POWER_AMPLIFIER:I = 0x5

.field public static final SEH_AMBIENT:I = 0x36

.field public static final SEH_CHARGER:I = 0x33

.field public static final SEH_FLASH:I = 0x35

.field public static final SEH_MODEM:I = 0x32

.field public static final SEH_WIFI:I = 0x34

.field public static final SKIN:I = 0x3

.field public static final UNKNOWN:I = -0x1

.field public static final USB_PORT:I = 0x4


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

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 82
    .local v1, "flipped":I
    and-int/lit8 v2, p0, -0x1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_12

    .line 83
    const-string v2, "UNKNOWN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    or-int/lit8 v1, v1, -0x1

    .line 86
    :cond_12
    const-string v2, "CPU"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_23

    .line 88
    const-string v2, "GPU"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    or-int/lit8 v1, v1, 0x1

    .line 91
    :cond_23
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2f

    .line 92
    const-string v2, "BATTERY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    or-int/lit8 v1, v1, 0x2

    .line 95
    :cond_2f
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3b

    .line 96
    const-string v2, "SKIN"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    or-int/lit8 v1, v1, 0x3

    .line 99
    :cond_3b
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_47

    .line 100
    const-string v2, "USB_PORT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    or-int/lit8 v1, v1, 0x4

    .line 103
    :cond_47
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_53

    .line 104
    const-string v2, "POWER_AMPLIFIER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    or-int/lit8 v1, v1, 0x5

    .line 107
    :cond_53
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5f

    .line 108
    const-string v2, "BCL_VOLTAGE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    or-int/lit8 v1, v1, 0x6

    .line 111
    :cond_5f
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6b

    .line 112
    const-string v2, "BCL_CURRENT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    or-int/lit8 v1, v1, 0x7

    .line 115
    :cond_6b
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_78

    .line 116
    const-string v2, "BCL_PERCENTAGE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    or-int/lit8 v1, v1, 0x8

    .line 119
    :cond_78
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_85

    .line 120
    const-string v2, "NPU"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    or-int/lit8 v1, v1, 0x9

    .line 123
    :cond_85
    and-int/lit8 v2, p0, 0x32

    const/16 v3, 0x32

    if-ne v2, v3, :cond_92

    .line 124
    const-string v2, "SEH_MODEM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    or-int/lit8 v1, v1, 0x32

    .line 127
    :cond_92
    and-int/lit8 v2, p0, 0x33

    const/16 v3, 0x33

    if-ne v2, v3, :cond_9f

    .line 128
    const-string v2, "SEH_CHARGER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    or-int/lit8 v1, v1, 0x33

    .line 131
    :cond_9f
    and-int/lit8 v2, p0, 0x34

    const/16 v3, 0x34

    if-ne v2, v3, :cond_ac

    .line 132
    const-string v2, "SEH_WIFI"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    or-int/lit8 v1, v1, 0x34

    .line 135
    :cond_ac
    and-int/lit8 v2, p0, 0x35

    const/16 v3, 0x35

    if-ne v2, v3, :cond_b9

    .line 136
    const-string v2, "SEH_FLASH"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    or-int/lit8 v1, v1, 0x35

    .line 139
    :cond_b9
    and-int/lit8 v2, p0, 0x36

    const/16 v3, 0x36

    if-ne v2, v3, :cond_c6

    .line 140
    const-string v2, "SEH_AMBIENT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    or-int/lit8 v1, v1, 0x36

    .line 143
    :cond_c6
    if-eq p0, v1, :cond_e4

    .line 144
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

    .line 146
    :cond_e4
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .registers 3
    .param p0, "o"    # I

    .line 28
    const/4 v0, -0x1

    if-ne p0, v0, :cond_6

    .line 29
    const-string v0, "UNKNOWN"

    return-object v0

    .line 31
    :cond_6
    if-nez p0, :cond_b

    .line 32
    const-string v0, "CPU"

    return-object v0

    .line 34
    :cond_b
    const/4 v0, 0x1

    if-ne p0, v0, :cond_11

    .line 35
    const-string v0, "GPU"

    return-object v0

    .line 37
    :cond_11
    const/4 v0, 0x2

    if-ne p0, v0, :cond_17

    .line 38
    const-string v0, "BATTERY"

    return-object v0

    .line 40
    :cond_17
    const/4 v0, 0x3

    if-ne p0, v0, :cond_1d

    .line 41
    const-string v0, "SKIN"

    return-object v0

    .line 43
    :cond_1d
    const/4 v0, 0x4

    if-ne p0, v0, :cond_23

    .line 44
    const-string v0, "USB_PORT"

    return-object v0

    .line 46
    :cond_23
    const/4 v0, 0x5

    if-ne p0, v0, :cond_29

    .line 47
    const-string v0, "POWER_AMPLIFIER"

    return-object v0

    .line 49
    :cond_29
    const/4 v0, 0x6

    if-ne p0, v0, :cond_2f

    .line 50
    const-string v0, "BCL_VOLTAGE"

    return-object v0

    .line 52
    :cond_2f
    const/4 v0, 0x7

    if-ne p0, v0, :cond_35

    .line 53
    const-string v0, "BCL_CURRENT"

    return-object v0

    .line 55
    :cond_35
    const/16 v0, 0x8

    if-ne p0, v0, :cond_3c

    .line 56
    const-string v0, "BCL_PERCENTAGE"

    return-object v0

    .line 58
    :cond_3c
    const/16 v0, 0x9

    if-ne p0, v0, :cond_43

    .line 59
    const-string v0, "NPU"

    return-object v0

    .line 61
    :cond_43
    const/16 v0, 0x32

    if-ne p0, v0, :cond_4a

    .line 62
    const-string v0, "SEH_MODEM"

    return-object v0

    .line 64
    :cond_4a
    const/16 v0, 0x33

    if-ne p0, v0, :cond_51

    .line 65
    const-string v0, "SEH_CHARGER"

    return-object v0

    .line 67
    :cond_51
    const/16 v0, 0x34

    if-ne p0, v0, :cond_58

    .line 68
    const-string v0, "SEH_WIFI"

    return-object v0

    .line 70
    :cond_58
    const/16 v0, 0x35

    if-ne p0, v0, :cond_5f

    .line 71
    const-string v0, "SEH_FLASH"

    return-object v0

    .line 73
    :cond_5f
    const/16 v0, 0x36

    if-ne p0, v0, :cond_66

    .line 74
    const-string v0, "SEH_AMBIENT"

    return-object v0

    .line 76
    :cond_66
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

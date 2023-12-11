.class public Landroid/hardware/scontext/SContextExerciseAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextExerciseAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static REQUIRED_DATA_BAROMETER:I = 0x0

.field private static REQUIRED_DATA_GPS:I = 0x0

.field private static REQUIRED_DATA_PEDOMETER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SContextExerciseAttribute"


# instance fields
.field private mRequiredDataType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 32
    const/4 v0, 0x1

    sput v0, Landroid/hardware/scontext/SContextExerciseAttribute;->REQUIRED_DATA_GPS:I

    .line 34
    const/4 v0, 0x2

    sput v0, Landroid/hardware/scontext/SContextExerciseAttribute;->REQUIRED_DATA_BAROMETER:I

    .line 36
    const/4 v0, 0x4

    sput v0, Landroid/hardware/scontext/SContextExerciseAttribute;->REQUIRED_DATA_PEDOMETER:I

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 38
    const/4 v0, 0x1

    filled-new-array {v0}, [I

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextExerciseAttribute;->mRequiredDataType:[I

    .line 46
    invoke-direct {p0}, Landroid/hardware/scontext/SContextExerciseAttribute;->setAttribute()V

    .line 47
    return-void
.end method

.method public constructor <init>([I)V
    .registers 3
    .param p1, "requiredDataType"    # [I

    .line 65
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 38
    const/4 v0, 0x1

    filled-new-array {v0}, [I

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextExerciseAttribute;->mRequiredDataType:[I

    .line 66
    iput-object p1, p0, Landroid/hardware/scontext/SContextExerciseAttribute;->mRequiredDataType:[I

    .line 67
    invoke-direct {p0}, Landroid/hardware/scontext/SContextExerciseAttribute;->setAttribute()V

    .line 68
    return-void
.end method

.method private setAttribute()V
    .registers 6

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "result":I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 94
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v2, "Required data type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    iget-object v3, p0, Landroid/hardware/scontext/SContextExerciseAttribute;->mRequiredDataType:[I

    array-length v3, v3

    if-ge v2, v3, :cond_3d

    .line 96
    const/4 v3, 0x0

    .line 97
    .local v3, "required_data":I
    if-eqz v2, :cond_19

    .line 98
    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    :cond_19
    iget-object v4, p0, Landroid/hardware/scontext/SContextExerciseAttribute;->mRequiredDataType:[I

    aget v4, v4, v2

    packed-switch v4, :pswitch_data_56

    goto :goto_39

    .line 110
    :pswitch_21
    sget v3, Landroid/hardware/scontext/SContextExerciseAttribute;->REQUIRED_DATA_PEDOMETER:I

    .line 111
    const-string v4, "Pedometer"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    goto :goto_39

    .line 106
    :pswitch_29
    sget v3, Landroid/hardware/scontext/SContextExerciseAttribute;->REQUIRED_DATA_BAROMETER:I

    .line 107
    const-string v4, "Barometer"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    goto :goto_39

    .line 102
    :pswitch_31
    sget v3, Landroid/hardware/scontext/SContextExerciseAttribute;->REQUIRED_DATA_GPS:I

    .line 103
    const-string v4, "GPS"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    nop

    .line 116
    :goto_39
    or-int/2addr v0, v3

    .line 95
    .end local v3    # "required_data":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 118
    .end local v2    # "i":I
    :cond_3d
    const-string v2, "SContextExerciseAttribute"

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 120
    .local v2, "attribute":Landroid/os/Bundle;
    const-string v3, "required_data_type"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    const/16 v3, 0x28

    invoke-super {p0, v3, v2}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 122
    return-void

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_31
        :pswitch_29
        :pswitch_21
    .end packed-switch
.end method


# virtual methods
.method public checkAttribute()Z
    .registers 8

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Landroid/hardware/scontext/SContextExerciseAttribute;->mRequiredDataType:[I

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_3d

    .line 75
    aget v2, v2, v1

    const/4 v3, 0x0

    const-string v5, "SContextExerciseAttribute"

    if-lt v2, v4, :cond_37

    const/4 v4, 0x3

    if-le v2, v4, :cond_17

    goto :goto_37

    .line 80
    :cond_17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1f
    if-ge v2, v1, :cond_34

    .line 82
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-ne v4, v6, :cond_31

    .line 83
    const-string v4, "This required data type cannot have duplicated type."

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return v3

    .line 81
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 74
    .end local v2    # "j":I
    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 77
    :cond_37
    :goto_37
    const-string v2, "The required data type is wrong."

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return v3

    .line 88
    .end local v1    # "i":I
    :cond_3d
    return v4
.end method

.class public Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextSlocationArDistanceAttribute.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SemContextSlocationArDistanceAttribute"


# instance fields
.field private mDistanceCmd:[I

.field private mMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 42
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;->mMode:I

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;->mDistanceCmd:[I

    .line 65
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;->setAttribute()V

    .line 66
    return-void
.end method

.method public constructor <init>(I[I)V
    .registers 6
    .param p1, "mode"    # I
    .param p2, "data"    # [I

    .line 89
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;->mMode:I

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;->mDistanceCmd:[I

    .line 90
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;->mMode:I

    .line 91
    array-length v0, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;->mDistanceCmd:[I

    .line 92
    const/4 v1, 0x0

    array-length v2, p2

    invoke-static {p2, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;->setAttribute()V

    .line 94
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "src"    # Landroid/os/Parcel;

    .line 72
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;->mMode:I

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;->mDistanceCmd:[I

    .line 73
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private setAttribute()V
    .registers 6

    .line 113
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 115
    .local v0, "attribute":Landroid/os/Bundle;
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;->mMode:I

    packed-switch v1, :pswitch_data_46

    goto :goto_1b

    .line 117
    :pswitch_b
    iget-object v1, p0, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;->mDistanceCmd:[I

    array-length v2, v1

    new-array v2, v2, [I

    .line 118
    .local v2, "intType":[I
    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    const-string v1, "distance_cmd_array"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 120
    nop

    .line 124
    .end local v2    # "intType":[I
    :goto_1b
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;->mMode:I

    const-string/jumbo v2, "mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAttribute() mode : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemContextSlocationArDistanceAttribute"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/16 v1, 0x38

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 127
    return-void

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public checkAttribute()Z
    .registers 3

    .line 102
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextSlocationArDistanceAttribute;->mMode:I

    const/4 v1, -0x1

    if-lt v0, v1, :cond_a

    const/4 v1, 0x1

    if-le v0, v1, :cond_9

    goto :goto_a

    .line 108
    :cond_9
    return v1

    .line 104
    :cond_a
    :goto_a
    const-string v0, "SemContextSlocationArDistanceAttribute"

    const-string v1, "Mode value is wrong!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v0, 0x0

    return v0
.end method

.class public Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextPedometerAttribute.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final MODE_EXERCISE:I = 0x1

.field private static final MODE_USER_INFO:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SemContextPedometerAttribute"


# instance fields
.field private mExerciseMode:I

.field private mGender:I

.field private mHeight:D

.field private mMode:I

.field private mWeight:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 65
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mGender:I

    .line 57
    const-wide v0, 0x4065400000000000L    # 170.0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mHeight:D

    .line 58
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mWeight:D

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mExerciseMode:I

    .line 60
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mMode:I

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mMode:I

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->setAttribute()V

    .line 68
    return-void
.end method

.method public constructor <init>(I)V
    .registers 5
    .param p1, "exerciseMode"    # I

    .line 117
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mGender:I

    .line 57
    const-wide v1, 0x4065400000000000L    # 170.0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mHeight:D

    .line 58
    const-wide/high16 v1, 0x404e000000000000L    # 60.0

    iput-wide v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mWeight:D

    .line 59
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mExerciseMode:I

    .line 60
    iput v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mMode:I

    .line 118
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mMode:I

    .line 119
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mExerciseMode:I

    .line 120
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->setAttribute()V

    .line 121
    return-void
.end method

.method public constructor <init>(IDD)V
    .registers 8
    .param p1, "gender"    # I
    .param p2, "height"    # D
    .param p4, "weight"    # D

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mGender:I

    .line 57
    const-wide v0, 0x4065400000000000L    # 170.0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mHeight:D

    .line 58
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mWeight:D

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mExerciseMode:I

    .line 60
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mMode:I

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mMode:I

    .line 95
    iput p1, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mGender:I

    .line 96
    iput-wide p2, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mHeight:D

    .line 97
    iput-wide p4, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mWeight:D

    .line 98
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->setAttribute()V

    .line 99
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "src"    # Landroid/os/Parcel;

    .line 74
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mGender:I

    .line 57
    const-wide v0, 0x4065400000000000L    # 170.0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mHeight:D

    .line 58
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mWeight:D

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mExerciseMode:I

    .line 60
    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mMode:I

    .line 75
    return-void
.end method

.method private setAttribute()V
    .registers 5

    .line 150
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 151
    .local v0, "attribute":Landroid/os/Bundle;
    const-string/jumbo v1, "mode"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 152
    iget v1, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mMode:I

    if-nez v1, :cond_29

    .line 153
    const-string v1, "gender"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mGender:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 154
    const-string/jumbo v1, "height"

    iget-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mHeight:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 155
    const-string/jumbo v1, "weight"

    iget-wide v2, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mWeight:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_30

    .line 157
    :cond_29
    const-string v1, "exercise_mode"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mExerciseMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 159
    :goto_30
    const/4 v1, 0x2

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 160
    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .registers 9

    .line 129
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mGender:I

    const/4 v1, 0x0

    const-string v2, "SemContextPedometerAttribute"

    const/4 v3, 0x1

    if-lt v0, v3, :cond_32

    const/4 v4, 0x2

    if-le v0, v4, :cond_c

    goto :goto_32

    .line 134
    :cond_c
    iget-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mHeight:D

    const-wide/16 v6, 0x0

    cmpg-double v0, v4, v6

    if-gtz v0, :cond_1a

    .line 135
    const-string v0, "The height is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return v1

    .line 138
    :cond_1a
    iget-wide v4, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mWeight:D

    cmpg-double v0, v4, v6

    if-gtz v0, :cond_26

    .line 139
    const-string v0, "The weight is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return v1

    .line 142
    :cond_26
    iget v0, p0, Lcom/samsung/android/hardware/context/SemContextPedometerAttribute;->mExerciseMode:I

    const/4 v4, -0x1

    if-ge v0, v4, :cond_31

    .line 143
    const-string v0, "The exercise mode is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return v1

    .line 146
    :cond_31
    return v3

    .line 131
    :cond_32
    :goto_32
    const-string v0, "The gender is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return v1
.end method

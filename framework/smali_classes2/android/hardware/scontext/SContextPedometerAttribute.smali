.class public Landroid/hardware/scontext/SContextPedometerAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextPedometerAttribute.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static MODE_EXERCISE:I = 0x0

.field private static MODE_USER_INFO:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SContextPedometerAttribute"


# instance fields
.field private mExerciseMode:I

.field private mGender:I

.field private mHeight:D

.field private mMode:I

.field private mWeight:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    const/4 v0, 0x0

    sput v0, Landroid/hardware/scontext/SContextPedometerAttribute;->MODE_USER_INFO:I

    .line 33
    const/4 v0, 0x1

    sput v0, Landroid/hardware/scontext/SContextPedometerAttribute;->MODE_EXERCISE:I

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 48
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mGender:I

    .line 37
    const-wide v0, 0x4065400000000000L    # 170.0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mHeight:D

    .line 39
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mWeight:D

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mExerciseMode:I

    .line 43
    iput v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mMode:I

    .line 49
    sget v0, Landroid/hardware/scontext/SContextPedometerAttribute;->MODE_USER_INFO:I

    iput v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mMode:I

    .line 50
    invoke-direct {p0}, Landroid/hardware/scontext/SContextPedometerAttribute;->setAttribute()V

    .line 51
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4
    .param p1, "exerciseMode"    # I

    .line 97
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mGender:I

    .line 37
    const-wide v0, 0x4065400000000000L    # 170.0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mHeight:D

    .line 39
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mWeight:D

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mExerciseMode:I

    .line 43
    iput v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mMode:I

    .line 98
    sget v0, Landroid/hardware/scontext/SContextPedometerAttribute;->MODE_EXERCISE:I

    iput v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mMode:I

    .line 99
    iput p1, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mExerciseMode:I

    .line 100
    invoke-direct {p0}, Landroid/hardware/scontext/SContextPedometerAttribute;->setAttribute()V

    .line 101
    return-void
.end method

.method public constructor <init>(IDD)V
    .registers 8
    .param p1, "gender"    # I
    .param p2, "height"    # D
    .param p4, "weight"    # D

    .line 71
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mGender:I

    .line 37
    const-wide v0, 0x4065400000000000L    # 170.0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mHeight:D

    .line 39
    const-wide/high16 v0, 0x404e000000000000L    # 60.0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mWeight:D

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mExerciseMode:I

    .line 43
    iput v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mMode:I

    .line 72
    sget v0, Landroid/hardware/scontext/SContextPedometerAttribute;->MODE_USER_INFO:I

    iput v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mMode:I

    .line 73
    iput p1, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mGender:I

    .line 74
    iput-wide p2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mHeight:D

    .line 75
    iput-wide p4, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mWeight:D

    .line 76
    invoke-direct {p0}, Landroid/hardware/scontext/SContextPedometerAttribute;->setAttribute()V

    .line 77
    return-void
.end method

.method private setAttribute()V
    .registers 5

    .line 127
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 128
    .local v0, "attribute":Landroid/os/Bundle;
    const-string v1, "mode"

    iget v2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 129
    iget v1, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mMode:I

    sget v2, Landroid/hardware/scontext/SContextPedometerAttribute;->MODE_USER_INFO:I

    if-ne v1, v2, :cond_28

    .line 130
    const-string v1, "gender"

    iget v2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mGender:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 131
    const-string v1, "height"

    iget-wide v2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mHeight:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 132
    const-string v1, "weight"

    iget-wide v2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mWeight:D

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_2f

    .line 134
    :cond_28
    const-string v1, "exercise_mode"

    iget v2, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mExerciseMode:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 136
    :goto_2f
    const/4 v1, 0x2

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 137
    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .registers 9

    .line 106
    iget v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mGender:I

    const/4 v1, 0x0

    const-string v2, "SContextPedometerAttribute"

    const/4 v3, 0x1

    if-lt v0, v3, :cond_32

    const/4 v4, 0x2

    if-le v0, v4, :cond_c

    goto :goto_32

    .line 111
    :cond_c
    iget-wide v4, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mHeight:D

    const-wide/16 v6, 0x0

    cmpg-double v0, v4, v6

    if-gtz v0, :cond_1a

    .line 112
    const-string v0, "The height is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return v1

    .line 115
    :cond_1a
    iget-wide v4, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mWeight:D

    cmpg-double v0, v4, v6

    if-gtz v0, :cond_26

    .line 116
    const-string v0, "The weight is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return v1

    .line 119
    :cond_26
    iget v0, p0, Landroid/hardware/scontext/SContextPedometerAttribute;->mExerciseMode:I

    const/4 v4, -0x1

    if-ge v0, v4, :cond_31

    .line 120
    const-string v0, "The exercise mode is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return v1

    .line 123
    :cond_31
    return v3

    .line 108
    :cond_32
    :goto_32
    const-string v0, "The gender is wrong."

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    return v1
.end method

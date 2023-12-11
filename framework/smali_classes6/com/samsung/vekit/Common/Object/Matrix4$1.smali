.class synthetic Lcom/samsung/vekit/Common/Object/Matrix4$1;
.super Ljava/lang/Object;
.source "Matrix4.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/vekit/Common/Object/Matrix4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$vekit$Common$Type$AxisType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 169
    invoke-static {}, Lcom/samsung/vekit/Common/Type/AxisType;->values()[Lcom/samsung/vekit/Common/Type/AxisType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/vekit/Common/Object/Matrix4$1;->$SwitchMap$com$samsung$vekit$Common$Type$AxisType:[I

    :try_start_9
    sget-object v1, Lcom/samsung/vekit/Common/Type/AxisType;->X:Lcom/samsung/vekit/Common/Type/AxisType;

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Type/AxisType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    :try_start_14
    sget-object v0, Lcom/samsung/vekit/Common/Object/Matrix4$1;->$SwitchMap$com$samsung$vekit$Common$Type$AxisType:[I

    sget-object v1, Lcom/samsung/vekit/Common/Type/AxisType;->Y:Lcom/samsung/vekit/Common/Type/AxisType;

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Type/AxisType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v0

    :goto_21
    :try_start_21
    sget-object v0, Lcom/samsung/vekit/Common/Object/Matrix4$1;->$SwitchMap$com$samsung$vekit$Common$Type$AxisType:[I

    sget-object v1, Lcom/samsung/vekit/Common/Type/AxisType;->Z:Lcom/samsung/vekit/Common/Type/AxisType;

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Type/AxisType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v0

    :goto_2e
    return-void
.end method

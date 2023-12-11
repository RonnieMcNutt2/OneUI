.class synthetic Lcom/samsung/app/video/editor/external/Element$1;
.super Ljava/lang/Object;
.source "Element.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/app/video/editor/external/Element;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$app$video$editor$external$Speed:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 879
    invoke-static {}, Lcom/samsung/app/video/editor/external/Speed;->values()[Lcom/samsung/app/video/editor/external/Speed;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/app/video/editor/external/Element$1;->$SwitchMap$com$samsung$app$video$editor$external$Speed:[I

    :try_start_9
    sget-object v1, Lcom/samsung/app/video/editor/external/Speed;->NORMAL:Lcom/samsung/app/video/editor/external/Speed;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Speed;->ordinal()I

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
    sget-object v0, Lcom/samsung/app/video/editor/external/Element$1;->$SwitchMap$com$samsung$app$video$editor$external$Speed:[I

    sget-object v1, Lcom/samsung/app/video/editor/external/Speed;->HALF:Lcom/samsung/app/video/editor/external/Speed;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Speed;->ordinal()I

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
    sget-object v0, Lcom/samsung/app/video/editor/external/Element$1;->$SwitchMap$com$samsung$app$video$editor$external$Speed:[I

    sget-object v1, Lcom/samsung/app/video/editor/external/Speed;->ONE_FOURTH:Lcom/samsung/app/video/editor/external/Speed;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Speed;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v0

    :goto_2e
    :try_start_2e
    sget-object v0, Lcom/samsung/app/video/editor/external/Element$1;->$SwitchMap$com$samsung$app$video$editor$external$Speed:[I

    sget-object v1, Lcom/samsung/app/video/editor/external/Speed;->ONE_EIGHTH:Lcom/samsung/app/video/editor/external/Speed;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Speed;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_39} :catch_3a

    goto :goto_3b

    :catch_3a
    move-exception v0

    :goto_3b
    :try_start_3b
    sget-object v0, Lcom/samsung/app/video/editor/external/Element$1;->$SwitchMap$com$samsung$app$video$editor$external$Speed:[I

    sget-object v1, Lcom/samsung/app/video/editor/external/Speed;->TWO_TIMES:Lcom/samsung/app/video/editor/external/Speed;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Speed;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3b .. :try_end_46} :catch_47

    goto :goto_48

    :catch_47
    move-exception v0

    :goto_48
    :try_start_48
    sget-object v0, Lcom/samsung/app/video/editor/external/Element$1;->$SwitchMap$com$samsung$app$video$editor$external$Speed:[I

    sget-object v1, Lcom/samsung/app/video/editor/external/Speed;->FOUR_TIMES:Lcom/samsung/app/video/editor/external/Speed;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Speed;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_53
    .catch Ljava/lang/NoSuchFieldError; {:try_start_48 .. :try_end_53} :catch_54

    goto :goto_55

    :catch_54
    move-exception v0

    :goto_55
    :try_start_55
    sget-object v0, Lcom/samsung/app/video/editor/external/Element$1;->$SwitchMap$com$samsung$app$video$editor$external$Speed:[I

    sget-object v1, Lcom/samsung/app/video/editor/external/Speed;->EIGHT_TIMES:Lcom/samsung/app/video/editor/external/Speed;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Speed;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_60
    .catch Ljava/lang/NoSuchFieldError; {:try_start_55 .. :try_end_60} :catch_61

    goto :goto_62

    :catch_61
    move-exception v0

    :goto_62
    :try_start_62
    sget-object v0, Lcom/samsung/app/video/editor/external/Element$1;->$SwitchMap$com$samsung$app$video$editor$external$Speed:[I

    sget-object v1, Lcom/samsung/app/video/editor/external/Speed;->SIXTEEN_TIMES:Lcom/samsung/app/video/editor/external/Speed;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Speed;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_6e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_62 .. :try_end_6e} :catch_6f

    goto :goto_70

    :catch_6f
    move-exception v0

    :goto_70
    :try_start_70
    sget-object v0, Lcom/samsung/app/video/editor/external/Element$1;->$SwitchMap$com$samsung$app$video$editor$external$Speed:[I

    sget-object v1, Lcom/samsung/app/video/editor/external/Speed;->THIRTY_TWO_TIMES:Lcom/samsung/app/video/editor/external/Speed;

    invoke-virtual {v1}, Lcom/samsung/app/video/editor/external/Speed;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_7c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_70 .. :try_end_7c} :catch_7d

    goto :goto_7e

    :catch_7d
    move-exception v0

    :goto_7e
    return-void
.end method

.class synthetic Lcom/samsung/vekit/Manager/AnimationManager$1;
.super Ljava/lang/Object;
.source "AnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/vekit/Manager/AnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$samsung$vekit$Common$Type$AnimationType:[I

.field static final synthetic $SwitchMap$com$samsung$vekit$Common$Type$TransitionType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 74
    invoke-static {}, Lcom/samsung/vekit/Common/Type/TransitionType;->values()[Lcom/samsung/vekit/Common/Type/TransitionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/samsung/vekit/Manager/AnimationManager$1;->$SwitchMap$com$samsung$vekit$Common$Type$TransitionType:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/samsung/vekit/Common/Type/TransitionType;->FADE:Lcom/samsung/vekit/Common/Type/TransitionType;

    invoke-virtual {v2}, Lcom/samsung/vekit/Common/Type/TransitionType;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    const/4 v0, 0x2

    :try_start_15
    sget-object v2, Lcom/samsung/vekit/Manager/AnimationManager$1;->$SwitchMap$com$samsung$vekit$Common$Type$TransitionType:[I

    sget-object v3, Lcom/samsung/vekit/Common/Type/TransitionType;->DISSOLVE:Lcom/samsung/vekit/Common/Type/TransitionType;

    invoke-virtual {v3}, Lcom/samsung/vekit/Common/Type/TransitionType;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v2

    :goto_21
    const/4 v2, 0x3

    :try_start_22
    sget-object v3, Lcom/samsung/vekit/Manager/AnimationManager$1;->$SwitchMap$com$samsung$vekit$Common$Type$TransitionType:[I

    sget-object v4, Lcom/samsung/vekit/Common/Type/TransitionType;->SLIDE:Lcom/samsung/vekit/Common/Type/TransitionType;

    invoke-virtual {v4}, Lcom/samsung/vekit/Common/Type/TransitionType;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    move-exception v3

    :goto_2e
    const/4 v3, 0x4

    :try_start_2f
    sget-object v4, Lcom/samsung/vekit/Manager/AnimationManager$1;->$SwitchMap$com$samsung$vekit$Common$Type$TransitionType:[I

    sget-object v5, Lcom/samsung/vekit/Common/Type/TransitionType;->WIPE:Lcom/samsung/vekit/Common/Type/TransitionType;

    invoke-virtual {v5}, Lcom/samsung/vekit/Common/Type/TransitionType;->ordinal()I

    move-result v5

    aput v3, v4, v5
    :try_end_39
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_39} :catch_3a

    goto :goto_3b

    :catch_3a
    move-exception v4

    :goto_3b
    const/4 v4, 0x5

    :try_start_3c
    sget-object v5, Lcom/samsung/vekit/Manager/AnimationManager$1;->$SwitchMap$com$samsung$vekit$Common$Type$TransitionType:[I

    sget-object v6, Lcom/samsung/vekit/Common/Type/TransitionType;->DEFAULT:Lcom/samsung/vekit/Common/Type/TransitionType;

    invoke-virtual {v6}, Lcom/samsung/vekit/Common/Type/TransitionType;->ordinal()I

    move-result v6

    aput v4, v5, v6
    :try_end_46
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3c .. :try_end_46} :catch_47

    goto :goto_48

    :catch_47
    move-exception v5

    .line 45
    :goto_48
    invoke-static {}, Lcom/samsung/vekit/Common/Type/AnimationType;->values()[Lcom/samsung/vekit/Common/Type/AnimationType;

    move-result-object v5

    array-length v5, v5

    new-array v5, v5, [I

    sput-object v5, Lcom/samsung/vekit/Manager/AnimationManager$1;->$SwitchMap$com$samsung$vekit$Common$Type$AnimationType:[I

    :try_start_51
    sget-object v6, Lcom/samsung/vekit/Common/Type/AnimationType;->TRANSFORM:Lcom/samsung/vekit/Common/Type/AnimationType;

    invoke-virtual {v6}, Lcom/samsung/vekit/Common/Type/AnimationType;->ordinal()I

    move-result v6

    aput v1, v5, v6
    :try_end_59
    .catch Ljava/lang/NoSuchFieldError; {:try_start_51 .. :try_end_59} :catch_5a

    goto :goto_5b

    :catch_5a
    move-exception v1

    :goto_5b
    :try_start_5b
    sget-object v1, Lcom/samsung/vekit/Manager/AnimationManager$1;->$SwitchMap$com$samsung$vekit$Common$Type$AnimationType:[I

    sget-object v5, Lcom/samsung/vekit/Common/Type/AnimationType;->FILTER:Lcom/samsung/vekit/Common/Type/AnimationType;

    invoke-virtual {v5}, Lcom/samsung/vekit/Common/Type/AnimationType;->ordinal()I

    move-result v5

    aput v0, v1, v5
    :try_end_65
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5b .. :try_end_65} :catch_66

    goto :goto_67

    :catch_66
    move-exception v0

    :goto_67
    :try_start_67
    sget-object v0, Lcom/samsung/vekit/Manager/AnimationManager$1;->$SwitchMap$com$samsung$vekit$Common$Type$AnimationType:[I

    sget-object v1, Lcom/samsung/vekit/Common/Type/AnimationType;->TONE:Lcom/samsung/vekit/Common/Type/AnimationType;

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Type/AnimationType;->ordinal()I

    move-result v1

    aput v2, v0, v1
    :try_end_71
    .catch Ljava/lang/NoSuchFieldError; {:try_start_67 .. :try_end_71} :catch_72

    goto :goto_73

    :catch_72
    move-exception v0

    :goto_73
    :try_start_73
    sget-object v0, Lcom/samsung/vekit/Manager/AnimationManager$1;->$SwitchMap$com$samsung$vekit$Common$Type$AnimationType:[I

    sget-object v1, Lcom/samsung/vekit/Common/Type/AnimationType;->TRANSITION:Lcom/samsung/vekit/Common/Type/AnimationType;

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Type/AnimationType;->ordinal()I

    move-result v1

    aput v3, v0, v1
    :try_end_7d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_73 .. :try_end_7d} :catch_7e

    goto :goto_7f

    :catch_7e
    move-exception v0

    :goto_7f
    :try_start_7f
    sget-object v0, Lcom/samsung/vekit/Manager/AnimationManager$1;->$SwitchMap$com$samsung$vekit$Common$Type$AnimationType:[I

    sget-object v1, Lcom/samsung/vekit/Common/Type/AnimationType;->ALPHA:Lcom/samsung/vekit/Common/Type/AnimationType;

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Type/AnimationType;->ordinal()I

    move-result v1

    aput v4, v0, v1
    :try_end_89
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7f .. :try_end_89} :catch_8a

    goto :goto_8b

    :catch_8a
    move-exception v0

    :goto_8b
    :try_start_8b
    sget-object v0, Lcom/samsung/vekit/Manager/AnimationManager$1;->$SwitchMap$com$samsung$vekit$Common$Type$AnimationType:[I

    sget-object v1, Lcom/samsung/vekit/Common/Type/AnimationType;->DEFAULT:Lcom/samsung/vekit/Common/Type/AnimationType;

    invoke-virtual {v1}, Lcom/samsung/vekit/Common/Type/AnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_96
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b .. :try_end_96} :catch_97

    goto :goto_98

    :catch_97
    move-exception v0

    :goto_98
    return-void
.end method

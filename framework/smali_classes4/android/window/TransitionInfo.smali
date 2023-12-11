.class public final Landroid/window/TransitionInfo;
.super Ljava/lang/Object;
.source "TransitionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/TransitionInfo$Change;,
        Landroid/window/TransitionInfo$Root;,
        Landroid/window/TransitionInfo$AnimationOptions;,
        Landroid/window/TransitionInfo$ChangeFlags;,
        Landroid/window/TransitionInfo$TransitionMode;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/window/TransitionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAGS_IS_NON_APP_WINDOW:I = 0x10102

.field public static final FLAG_BACK_GESTURE_ANIMATED:I = 0x20000

.field public static final FLAG_CROSS_PROFILE_OWNER_THUMBNAIL:I = 0x1000

.field public static final FLAG_CROSS_PROFILE_WORK_THUMBNAIL:I = 0x2000

.field public static final FLAG_CUSTOM_DISPLAY_CHANGE_TRANSITION:I = 0x10000000

.field public static final FLAG_DISPLAY_HAS_ALERT_WINDOWS:I = 0x80

.field public static final FLAG_EDGE_EXTENSION_RESTRICTION:I = 0x2000000

.field public static final FLAG_FAST_ANIMATION:I = 0x20000000

.field public static final FLAG_FILLS_TASK:I = 0x400

.field public static final FLAG_FIRST_CUSTOM:I = 0x400000

.field public static final FLAG_IN_TASK_WITH_EMBEDDED_ACTIVITY:I = 0x200

.field public static final FLAG_IS_ACTIVITY:I = 0x800000

.field public static final FLAG_IS_BEHIND_STARTING_WINDOW:I = 0x4000

.field public static final FLAG_IS_DISPLAY:I = 0x20

.field public static final FLAG_IS_INPUT_METHOD:I = 0x100

.field public static final FLAG_IS_OCCLUDED:I = 0x8000

.field public static final FLAG_IS_SYSTEM_WINDOW:I = 0x10000

.field public static final FLAG_IS_TRANSIENT_LAUNCH_OVERLAY:I = 0x8000000

.field public static final FLAG_IS_VOICE_INTERACTION:I = 0x10

.field public static final FLAG_IS_WALLPAPER:I = 0x2

.field public static final FLAG_LATE_TRANSIENT_LAUNCH:I = 0x4000000

.field public static final FLAG_MOVED_TO_TOP:I = 0x100000

.field public static final FLAG_NONE:I = 0x0

.field public static final FLAG_NO_ANIMATION:I = 0x40000

.field public static final FLAG_SHOW_WALLPAPER:I = 0x1

.field public static final FLAG_STARTING_WINDOW_TRANSFER_RECIPIENT:I = 0x8

.field public static final FLAG_SYNC:I = 0x200000

.field public static final FLAG_TASK_LAUNCHING_BEHIND:I = 0x80000

.field public static final FLAG_TRANSLUCENT:I = 0x4

.field public static final FLAG_WILL_IME_SHOWN:I = 0x800

.field private static final TAG:Ljava/lang/String; = "TransitionInfo"


# instance fields
.field private mCanMergeAnimation:Z

.field private final mChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/window/TransitionInfo$Change;",
            ">;"
        }
    .end annotation
.end field

.field private mDebugId:I

.field private mDisplayChangeBackColor:I

.field private mFlags:I

.field private mOptions:Landroid/window/TransitionInfo$AnimationOptions;

.field private final mRoots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/window/TransitionInfo$Root;",
            ">;"
        }
    .end annotation
.end field

.field private mSeparatedFromCustomDisplayChange:Z

.field private mSkipMergeAnimation:Z

.field private mTrack:I

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 315
    new-instance v0, Landroid/window/TransitionInfo$1;

    invoke-direct {v0}, Landroid/window/TransitionInfo$1;-><init>()V

    sput-object v0, Landroid/window/TransitionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "flags"    # I

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    const/4 v0, 0x0

    iput v0, p0, Landroid/window/TransitionInfo;->mTrack:I

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    .line 266
    const/4 v0, -0x1

    iput v0, p0, Landroid/window/TransitionInfo;->mDebugId:I

    .line 571
    iput v0, p0, Landroid/window/TransitionInfo;->mDisplayChangeBackColor:I

    .line 274
    iput p1, p0, Landroid/window/TransitionInfo;->mType:I

    .line 275
    iput p2, p0, Landroid/window/TransitionInfo;->mFlags:I

    .line 276
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    const/4 v0, 0x0

    iput v0, p0, Landroid/window/TransitionInfo;->mTrack:I

    .line 259
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    .line 261
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    .line 266
    const/4 v2, -0x1

    iput v2, p0, Landroid/window/TransitionInfo;->mDebugId:I

    .line 571
    iput v2, p0, Landroid/window/TransitionInfo;->mDisplayChangeBackColor:I

    .line 279
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/window/TransitionInfo;->mType:I

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/window/TransitionInfo;->mFlags:I

    .line 281
    sget-object v2, Landroid/window/TransitionInfo$Change;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 282
    sget-object v0, Landroid/window/TransitionInfo$Root;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 283
    sget-object v0, Landroid/window/TransitionInfo$AnimationOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$AnimationOptions;

    iput-object v0, p0, Landroid/window/TransitionInfo;->mOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo;->mDebugId:I

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/window/TransitionInfo;->mTrack:I

    .line 288
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_MERGE:Z

    if-eqz v0, :cond_55

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/TransitionInfo;->mCanMergeAnimation:Z

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/window/TransitionInfo;->mSkipMergeAnimation:Z

    .line 293
    :cond_55
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/window/TransitionInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/window/TransitionInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static flagsToString(I)Ljava/lang/String;
    .registers 6
    .param p0, "flags"    # I

    .line 634
    if-nez p0, :cond_5

    const-string v0, "NONE"

    return-object v0

    .line 635
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 636
    .local v0, "sb":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_13

    .line 637
    const-string v1, "SHOW_WALLPAPER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    :cond_13
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1c

    .line 640
    const-string v1, "IS_WALLPAPER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 642
    :cond_1c
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_25

    .line 643
    const-string v1, "IS_INPUT_METHOD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    :cond_25
    and-int/lit8 v1, p0, 0x4

    const-string v2, ""

    const-string/jumbo v3, "|"

    if-eqz v1, :cond_40

    .line 646
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_36

    move-object v1, v2

    goto :goto_37

    :cond_36
    move-object v1, v3

    :goto_37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "TRANSLUCENT"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    :cond_40
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_56

    .line 649
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_4c

    move-object v1, v2

    goto :goto_4d

    :cond_4c
    move-object v1, v3

    :goto_4d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "STARTING_WINDOW_TRANSFER"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    :cond_56
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_6c

    .line 652
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_62

    move-object v1, v2

    goto :goto_63

    :cond_62
    move-object v1, v3

    :goto_63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "IS_VOICE_INTERACTION"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    :cond_6c
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_82

    .line 655
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_78

    move-object v1, v2

    goto :goto_79

    :cond_78
    move-object v1, v3

    :goto_79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "IS_DISPLAY"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    :cond_82
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_98

    .line 658
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_8e

    move-object v1, v2

    goto :goto_8f

    :cond_8e
    move-object v1, v3

    :goto_8f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "DISPLAY_HAS_ALERT_WINDOWS"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    :cond_98
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_ae

    .line 661
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_a4

    move-object v1, v2

    goto :goto_a5

    :cond_a4
    move-object v1, v3

    :goto_a5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "IN_TASK_WITH_EMBEDDED_ACTIVITY"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    :cond_ae
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_c4

    .line 664
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_ba

    move-object v1, v2

    goto :goto_bb

    :cond_ba
    move-object v1, v3

    :goto_bb
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "FILLS_TASK"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    :cond_c4
    and-int/lit16 v1, p0, 0x4000

    if-eqz v1, :cond_da

    .line 667
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_d0

    move-object v1, v2

    goto :goto_d1

    :cond_d0
    move-object v1, v3

    :goto_d1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "IS_BEHIND_STARTING_WINDOW"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    :cond_da
    const v1, 0x8000

    and-int/2addr v1, p0

    if-eqz v1, :cond_f2

    .line 670
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_e8

    move-object v1, v2

    goto :goto_e9

    :cond_e8
    move-object v1, v3

    :goto_e9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "IS_OCCLUDED"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    :cond_f2
    const/high16 v1, 0x10000

    and-int/2addr v1, p0

    if-eqz v1, :cond_109

    .line 673
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_ff

    move-object v1, v2

    goto :goto_100

    :cond_ff
    move-object v1, v3

    :goto_100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "FLAG_IS_SYSTEM_WINDOW"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    :cond_109
    const/high16 v1, 0x20000

    and-int/2addr v1, p0

    if-eqz v1, :cond_120

    .line 676
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_116

    move-object v1, v2

    goto :goto_117

    :cond_116
    move-object v1, v3

    :goto_117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "FLAG_BACK_GESTURE_ANIMATED"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    :cond_120
    const/high16 v1, 0x40000

    and-int/2addr v1, p0

    if-eqz v1, :cond_137

    .line 679
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_12d

    move-object v1, v2

    goto :goto_12e

    :cond_12d
    move-object v1, v3

    :goto_12e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "NO_ANIMATION"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    :cond_137
    const/high16 v1, 0x80000

    and-int/2addr v1, p0

    if-eqz v1, :cond_15b

    .line 682
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_149

    move-object v4, v2

    goto :goto_14a

    :cond_149
    move-object v4, v3

    :goto_14a
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "TASK_LAUNCHING_BEHIND"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    :cond_15b
    const/high16 v1, 0x200000

    and-int/2addr v1, p0

    if-eqz v1, :cond_17f

    .line 685
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_16d

    move-object v4, v2

    goto :goto_16e

    :cond_16d
    move-object v4, v3

    :goto_16e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "SYNC"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    :cond_17f
    const/high16 v1, 0x400000

    and-int/2addr v1, p0

    if-eqz v1, :cond_196

    .line 688
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_18c

    move-object v1, v2

    goto :goto_18d

    :cond_18c
    move-object v1, v3

    :goto_18d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "FIRST_CUSTOM"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    :cond_196
    const/high16 v1, 0x100000

    and-int/2addr v1, p0

    if-eqz v1, :cond_1ad

    .line 691
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_1a3

    move-object v1, v2

    goto :goto_1a4

    :cond_1a3
    move-object v1, v3

    :goto_1a4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "MOVE_TO_TOP"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    :cond_1ad
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz v1, :cond_1c8

    const/high16 v1, 0x800000

    and-int/2addr v1, p0

    if-eqz v1, :cond_1c8

    .line 695
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_1be

    move-object v1, v2

    goto :goto_1bf

    :cond_1be
    move-object v1, v3

    :goto_1bf
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "IS_ACTIVITY"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    :cond_1c8
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_DISPLAY_CHANGE_TRANSITION:Z

    if-eqz v1, :cond_1fa

    .line 698
    const/high16 v1, 0x10000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_1e3

    .line 699
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_1d9

    move-object v1, v2

    goto :goto_1da

    :cond_1d9
    move-object v1, v3

    :goto_1da
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "CUSTOM_DISPLAY_CHANGE_TRANSITION"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 701
    :cond_1e3
    const/high16 v1, 0x20000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_1fa

    .line 702
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_1f0

    move-object v1, v2

    goto :goto_1f1

    :cond_1f0
    move-object v1, v3

    :goto_1f1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "FAST_ANIMATION"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    :cond_1fa
    const/high16 v1, 0x2000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_211

    .line 707
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_207

    move-object v1, v2

    goto :goto_208

    :cond_207
    move-object v1, v3

    :goto_208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "EDGE_EXTENSION_RESTRICTION"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    :cond_211
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_LATE_TRANSIENT_LAUNCH:Z

    if-eqz v1, :cond_22c

    const/high16 v1, 0x4000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_22c

    .line 711
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_222

    move-object v1, v2

    goto :goto_223

    :cond_222
    move-object v1, v3

    :goto_223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "LATE_TRANSIENT_LAUNCH"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 713
    :cond_22c
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_TRANSIENT_LAUNCH_OVERLAY:Z

    if-eqz v1, :cond_246

    const/high16 v1, 0x8000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_246

    .line 715
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_23c

    goto :goto_23d

    :cond_23c
    move-object v2, v3

    :goto_23d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "TRANSIENT_LAUNCH_OVERLAY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    :cond_246
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isIndependent(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Z
    .registers 7
    .param p0, "change"    # Landroid/window/TransitionInfo$Change;
    .param p1, "info"    # Landroid/window/TransitionInfo;

    .line 728
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    return v1

    .line 732
    :cond_8
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v0

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-ne v0, v2, :cond_11

    return v3

    .line 734
    :cond_11
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v0

    .line 735
    .local v0, "parentChg":Landroid/window/TransitionInfo$Change;
    :goto_19
    if-eqz v0, :cond_32

    .line 738
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v4

    if-eq v4, v2, :cond_22

    return v3

    .line 742
    :cond_22
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v4

    if-nez v4, :cond_29

    return v1

    .line 744
    :cond_29
    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object v0

    goto :goto_19

    .line 746
    :cond_32
    return v3
.end method

.method public static modeToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "mode"    # I

    .line 620
    packed-switch p0, :pswitch_data_30

    .line 627
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<unknown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 626
    :pswitch_1d
    const-string v0, "CHANGE"

    return-object v0

    .line 625
    :pswitch_20
    const-string v0, "TO_BACK"

    return-object v0

    .line 624
    :pswitch_23
    const-string v0, "TO_FRONT"

    return-object v0

    .line 623
    :pswitch_26
    const-string v0, "CLOSE"

    return-object v0

    .line 622
    :pswitch_29
    const-string v0, "OPEN"

    return-object v0

    .line 621
    :pswitch_2c
    const-string v0, "NONE"

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_3
        :pswitch_1d
    .end packed-switch
.end method


# virtual methods
.method public addChange(Landroid/window/TransitionInfo$Change;)V
    .registers 3
    .param p1, "change"    # Landroid/window/TransitionInfo$Change;

    .line 450
    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    return-void
.end method

.method public addRoot(Landroid/window/TransitionInfo$Root;)V
    .registers 3
    .param p1, "other"    # Landroid/window/TransitionInfo$Root;

    .line 351
    iget-object v0, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    return-void
.end method

.method public addRootLeash(ILandroid/view/SurfaceControl;II)V
    .registers 7
    .param p1, "displayId"    # I
    .param p2, "leash"    # Landroid/view/SurfaceControl;
    .param p3, "offsetLeft"    # I
    .param p4, "offsetTop"    # I

    .line 337
    iget-object v0, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    new-instance v1, Landroid/window/TransitionInfo$Root;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/window/TransitionInfo$Root;-><init>(ILandroid/view/SurfaceControl;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    return-void
.end method

.method public addRootLeash(ILandroid/view/SurfaceControl;IILandroid/content/res/Configuration;Z)V
    .registers 16
    .param p1, "displayId"    # I
    .param p2, "leash"    # Landroid/view/SurfaceControl;
    .param p3, "offsetLeft"    # I
    .param p4, "offsetTop"    # I
    .param p5, "rootConfig"    # Landroid/content/res/Configuration;
    .param p6, "isActivityRootLeash"    # Z

    .line 344
    iget-object v0, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    new-instance v8, Landroid/window/TransitionInfo$Root;

    move-object v1, v8

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Landroid/window/TransitionInfo$Root;-><init>(ILandroid/view/SurfaceControl;IILandroid/content/res/Configuration;Z)V

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    return-void
.end method

.method public canMergeAnimation()Z
    .registers 2

    .line 554
    iget-boolean v0, p0, Landroid/window/TransitionInfo;->mCanMergeAnimation:Z

    return v0
.end method

.method public canSkipMergeAnimation()Z
    .registers 2

    .line 566
    iget-boolean v0, p0, Landroid/window/TransitionInfo;->mSkipMergeAnimation:Z

    return v0
.end method

.method public describeContents()I
    .registers 2

    .line 331
    const/4 v0, 0x0

    return v0
.end method

.method public findRootIndex(I)I
    .registers 4
    .param p1, "displayId"    # I

    .line 390
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 391
    iget-object v1, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Root;

    invoke-static {v1}, Landroid/window/TransitionInfo$Root;->-$$Nest$fgetmDisplayId(Landroid/window/TransitionInfo$Root;)I

    move-result v1

    if-ne v1, p1, :cond_18

    .line 392
    return v0

    .line 390
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 395
    .end local v0    # "i":I
    :cond_1b
    const/4 v0, -0x1

    return v0
.end method

.method public getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;
    .registers 2

    .line 420
    iget-object v0, p0, Landroid/window/TransitionInfo;->mOptions:Landroid/window/TransitionInfo$AnimationOptions;

    return-object v0
.end method

.method public getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;
    .registers 4
    .param p1, "token"    # Landroid/window/WindowContainerToken;

    .line 438
    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_28

    .line 439
    iget-object v1, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-static {v1}, Landroid/window/TransitionInfo$Change;->-$$Nest$fgetmContainer(Landroid/window/TransitionInfo$Change;)Landroid/window/WindowContainerToken;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/window/WindowContainerToken;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 440
    iget-object v1, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    return-object v1

    .line 438
    :cond_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 443
    .end local v0    # "i":I
    :cond_28
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChangeForAppsEdgeActivity()Landroid/window/TransitionInfo$Change;
    .registers 5

    .line 500
    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    .line 501
    .local v1, "change":Landroid/window/TransitionInfo$Change;
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    .line 502
    .local v2, "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v2, :cond_25

    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_25

    iget-object v3, v2, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 503
    invoke-static {v3}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isAppsEdgeActivity(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 504
    return-object v1

    .line 506
    .end local v1    # "change":Landroid/window/TransitionInfo$Change;
    .end local v2    # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_25
    goto :goto_6

    .line 507
    :cond_26
    const/4 v0, 0x0

    return-object v0
.end method

.method public getChanges()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/window/TransitionInfo$Change;",
            ">;"
        }
    .end annotation

    .line 429
    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDebugId()I
    .registers 2

    .line 480
    iget v0, p0, Landroid/window/TransitionInfo;->mDebugId:I

    return v0
.end method

.method public getFlags()I
    .registers 2

    .line 367
    iget v0, p0, Landroid/window/TransitionInfo;->mFlags:I

    return v0
.end method

.method public getOverrideDisplayChangeBackColor()I
    .registers 2

    .line 578
    iget v0, p0, Landroid/window/TransitionInfo;->mDisplayChangeBackColor:I

    return v0
.end method

.method public getRoot(I)Landroid/window/TransitionInfo$Root;
    .registers 3
    .param p1, "idx"    # I

    .line 383
    iget-object v0, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$Root;

    return-object v0
.end method

.method public getRootCount()I
    .registers 2

    .line 375
    iget-object v0, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getRootLeash()Landroid/view/SurfaceControl;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 409
    iget-object v0, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 412
    iget-object v0, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1d

    .line 413
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "TransitionInfo"

    const-string v2, "Assuming one animation root when there are more."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 416
    :cond_1d
    iget-object v0, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$Root;

    invoke-static {v0}, Landroid/window/TransitionInfo$Root;->-$$Nest$fgetmLeash(Landroid/window/TransitionInfo$Root;)Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0

    .line 410
    :cond_2b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Trying to get a root leash from a no-op transition."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTrack()I
    .registers 2

    .line 462
    iget v0, p0, Landroid/window/TransitionInfo;->mTrack:I

    return v0
.end method

.method public getType()I
    .registers 2

    .line 359
    iget v0, p0, Landroid/window/TransitionInfo;->mType:I

    return v0
.end method

.method public hasChangeTransition()Z
    .registers 4

    .line 488
    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    .line 489
    .local v1, "change":Landroid/window/TransitionInfo$Change;
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getChangeLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 490
    const/4 v0, 0x1

    return v0

    .line 492
    .end local v1    # "change":Landroid/window/TransitionInfo$Change;
    :cond_1a
    goto :goto_6

    .line 493
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public hasCustomDisplayChangeTransition()Z
    .registers 4

    .line 516
    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    .line 517
    .local v1, "change":Landroid/window/TransitionInfo$Change;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 518
    const/4 v0, 0x1

    return v0

    .line 520
    .end local v1    # "change":Landroid/window/TransitionInfo$Change;
    :cond_1c
    goto :goto_6

    .line 521
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public isKeyguardGoingAway()Z
    .registers 2

    .line 457
    iget v0, p0, Landroid/window/TransitionInfo;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isSeparatedFromCustomDisplayChange()Z
    .registers 2

    .line 532
    iget-boolean v0, p0, Landroid/window/TransitionInfo;->mSeparatedFromCustomDisplayChange:Z

    return v0
.end method

.method public localRemoteCopy()Landroid/window/TransitionInfo;
    .registers 5

    .line 801
    new-instance v0, Landroid/window/TransitionInfo;

    iget v1, p0, Landroid/window/TransitionInfo;->mType:I

    iget v2, p0, Landroid/window/TransitionInfo;->mFlags:I

    invoke-direct {v0, v1, v2}, Landroid/window/TransitionInfo;-><init>(II)V

    .line 802
    .local v0, "out":Landroid/window/TransitionInfo;
    iget v1, p0, Landroid/window/TransitionInfo;->mTrack:I

    iput v1, v0, Landroid/window/TransitionInfo;->mTrack:I

    .line 803
    iget v1, p0, Landroid/window/TransitionInfo;->mDebugId:I

    iput v1, v0, Landroid/window/TransitionInfo;->mDebugId:I

    .line 804
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    iget-object v2, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 805
    iget-object v2, v0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    invoke-static {v3}, Landroid/window/TransitionInfo$Change;->-$$Nest$mlocalRemoteCopy(Landroid/window/TransitionInfo$Change;)Landroid/window/TransitionInfo$Change;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 807
    .end local v1    # "i":I
    :cond_2e
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2f
    iget-object v2, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4b

    .line 808
    iget-object v2, v0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Root;

    invoke-static {v3}, Landroid/window/TransitionInfo$Root;->-$$Nest$mlocalRemoteCopy(Landroid/window/TransitionInfo$Root;)Landroid/window/TransitionInfo$Root;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 811
    .end local v1    # "i":I
    :cond_4b
    iget-object v1, p0, Landroid/window/TransitionInfo;->mOptions:Landroid/window/TransitionInfo$AnimationOptions;

    iput-object v1, v0, Landroid/window/TransitionInfo;->mOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 814
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_MERGE:Z

    if-eqz v1, :cond_5b

    .line 815
    iget-boolean v1, p0, Landroid/window/TransitionInfo;->mCanMergeAnimation:Z

    iput-boolean v1, v0, Landroid/window/TransitionInfo;->mCanMergeAnimation:Z

    .line 816
    iget-boolean v1, p0, Landroid/window/TransitionInfo;->mSkipMergeAnimation:Z

    iput-boolean v1, v0, Landroid/window/TransitionInfo;->mSkipMergeAnimation:Z

    .line 819
    :cond_5b
    return-object v0
.end method

.method public overrideDisplayChangeBackColor(I)V
    .registers 2
    .param p1, "displayChangeBackColor"    # I

    .line 574
    iput p1, p0, Landroid/window/TransitionInfo;->mDisplayChangeBackColor:I

    .line 575
    return-void
.end method

.method public releaseAllSurfaces()V
    .registers 3

    .line 778
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->releaseAnimSurfaces()V

    .line 779
    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_b
    if-ltz v0, :cond_1f

    .line 780
    iget-object v1, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    .line 779
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 782
    .end local v0    # "i":I
    :cond_1f
    return-void
.end method

.method public releaseAnimSurfaces()V
    .registers 5

    .line 754
    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_3a

    .line 755
    iget-object v1, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    .line 756
    .local v1, "c":Landroid/window/TransitionInfo$Change;
    invoke-static {v1}, Landroid/window/TransitionInfo$Change;->-$$Nest$fgetmSnapshot(Landroid/window/TransitionInfo$Change;)Landroid/view/SurfaceControl;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_23

    .line 757
    invoke-static {v1}, Landroid/window/TransitionInfo$Change;->-$$Nest$fgetmSnapshot(Landroid/window/TransitionInfo$Change;)Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->release()V

    .line 758
    invoke-static {v1, v3}, Landroid/window/TransitionInfo$Change;->-$$Nest$fputmSnapshot(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;)V

    .line 761
    :cond_23
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_CHANGE_TRANSITION:Z

    if-eqz v2, :cond_37

    invoke-static {v1}, Landroid/window/TransitionInfo$Change;->-$$Nest$fgetmChangeLeash(Landroid/window/TransitionInfo$Change;)Landroid/view/SurfaceControl;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 762
    invoke-static {v1}, Landroid/window/TransitionInfo$Change;->-$$Nest$fgetmChangeLeash(Landroid/window/TransitionInfo$Change;)Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->release()V

    .line 763
    invoke-static {v1, v3}, Landroid/window/TransitionInfo$Change;->-$$Nest$fputmChangeLeash(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;)V

    .line 754
    .end local v1    # "c":Landroid/window/TransitionInfo$Change;
    :cond_37
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 767
    .end local v0    # "i":I
    :cond_3a
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3b
    iget-object v1, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_55

    .line 768
    iget-object v1, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Root;

    invoke-static {v1}, Landroid/window/TransitionInfo$Root;->-$$Nest$fgetmLeash(Landroid/window/TransitionInfo$Root;)Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->release()V

    .line 767
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 770
    .end local v0    # "i":I
    :cond_55
    return-void
.end method

.method public setAnimationOptions(Landroid/window/TransitionInfo$AnimationOptions;)V
    .registers 2
    .param p1, "options"    # Landroid/window/TransitionInfo$AnimationOptions;

    .line 355
    iput-object p1, p0, Landroid/window/TransitionInfo;->mOptions:Landroid/window/TransitionInfo$AnimationOptions;

    .line 356
    return-void
.end method

.method public setCanMergeAnimation()V
    .registers 2

    .line 549
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/TransitionInfo;->mCanMergeAnimation:Z

    .line 550
    return-void
.end method

.method public setDebugId(I)V
    .registers 2
    .param p1, "id"    # I

    .line 475
    iput p1, p0, Landroid/window/TransitionInfo;->mDebugId:I

    .line 476
    return-void
.end method

.method public setFlags(I)V
    .registers 2
    .param p1, "flags"    # I

    .line 363
    iput p1, p0, Landroid/window/TransitionInfo;->mFlags:I

    .line 364
    return-void
.end method

.method public setSeparatedFromCustomDisplayChange(Z)V
    .registers 4
    .param p1, "separated"    # Z

    .line 536
    iget-boolean v0, p0, Landroid/window/TransitionInfo;->mSeparatedFromCustomDisplayChange:Z

    if-eq v0, p1, :cond_2e

    .line 537
    iput-boolean p1, p0, Landroid/window/TransitionInfo;->mSeparatedFromCustomDisplayChange:Z

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSeparatedFromCustomDisplayChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 539
    const/4 v1, 0x3

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 538
    const-string v1, "TransitionInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_2e
    return-void
.end method

.method public setSkipMergeAnimation()V
    .registers 2

    .line 561
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/window/TransitionInfo;->mSkipMergeAnimation:Z

    .line 562
    return-void
.end method

.method public setTrack(I)V
    .registers 2
    .param p1, "track"    # I

    .line 467
    iput p1, p0, Landroid/window/TransitionInfo;->mTrack:I

    .line 468
    return-void
.end method

.method public setUnreleasedWarningCallSiteForAllSurfaces(Ljava/lang/String;)V
    .registers 4
    .param p1, "callsite"    # Ljava/lang/String;

    .line 789
    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 790
    iget-object v1, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/SurfaceControl;->setUnreleasedWarningCallSite(Ljava/lang/String;)V

    .line 789
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 792
    .end local v0    # "i":I
    :cond_1c
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 585
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/TransitionInfo;->mDebugId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/TransitionInfo;->mType:I

    invoke-static {v2}, Landroid/view/WindowManager;->transitTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 586
    const-string v2, " f=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/TransitionInfo;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " trk="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/window/TransitionInfo;->mTrack:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 587
    const-string v2, " r=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_44
    iget-object v2, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x2c

    if-ge v1, v2, :cond_7b

    .line 589
    if-lez v1, :cond_53

    .line 590
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 592
    :cond_53
    iget-object v2, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Root;

    invoke-static {v2}, Landroid/window/TransitionInfo$Root;->-$$Nest$fgetmDisplayId(Landroid/window/TransitionInfo$Root;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Root;

    invoke-static {v3}, Landroid/window/TransitionInfo$Root;->-$$Nest$fgetmOffset(Landroid/window/TransitionInfo$Root;)Landroid/graphics/Point;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 588
    add-int/lit8 v1, v1, 0x1

    goto :goto_44

    .line 594
    .end local v1    # "i":I
    :cond_7b
    const-string v1, "] c=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_81
    iget-object v2, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_9a

    .line 596
    if-lez v1, :cond_8e

    .line 597
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 599
    :cond_8e
    iget-object v2, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 595
    add-int/lit8 v1, v1, 0x1

    goto :goto_81

    .line 603
    .end local v1    # "i":I
    :cond_9a
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_MERGE:Z

    if-eqz v1, :cond_b0

    .line 604
    iget-boolean v1, p0, Landroid/window/TransitionInfo;->mCanMergeAnimation:Z

    if-eqz v1, :cond_a7

    .line 605
    const-string v1, "] [merge=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    :cond_a7
    iget-boolean v1, p0, Landroid/window/TransitionInfo;->mSkipMergeAnimation:Z

    if-eqz v1, :cond_b0

    .line 608
    const-string v1, "] [skipMerge=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    :cond_b0
    const-string v1, "]}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 298
    iget v0, p0, Landroid/window/TransitionInfo;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    iget v0, p0, Landroid/window/TransitionInfo;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    iget-object v0, p0, Landroid/window/TransitionInfo;->mChanges:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 301
    iget-object v0, p0, Landroid/window/TransitionInfo;->mRoots:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    .line 302
    iget-object v0, p0, Landroid/window/TransitionInfo;->mOptions:Landroid/window/TransitionInfo$AnimationOptions;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 303
    iget v0, p0, Landroid/window/TransitionInfo;->mDebugId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    iget v0, p0, Landroid/window/TransitionInfo;->mTrack:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_SHELL_TRANSITION_MERGE:Z

    if-eqz v0, :cond_31

    .line 308
    iget-boolean v0, p0, Landroid/window/TransitionInfo;->mCanMergeAnimation:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 309
    iget-boolean v0, p0, Landroid/window/TransitionInfo;->mSkipMergeAnimation:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 312
    :cond_31
    return-void
.end method

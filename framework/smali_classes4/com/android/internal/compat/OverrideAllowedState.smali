.class public final Lcom/android/internal/compat/OverrideAllowedState;
.super Ljava/lang/Object;
.source "OverrideAllowedState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/compat/OverrideAllowedState$State;
    }
.end annotation


# static fields
.field public static final ALLOWED:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/compat/OverrideAllowedState;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFERRED_VERIFICATION:I = 0x4

.field public static final DISABLED_NON_TARGET_SDK:I = 0x2

.field public static final DISABLED_NOT_DEBUGGABLE:I = 0x1

.field public static final DISABLED_TARGET_SDK_TOO_HIGH:I = 0x3

.field public static final LOGGING_ONLY_CHANGE:I = 0x5

.field public static final PLATFORM_TOO_OLD:I = 0x6


# instance fields
.field public final appTargetSdk:I

.field public final changeIdTargetSdk:I

.field public final state:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 140
    new-instance v0, Lcom/android/internal/compat/OverrideAllowedState$1;

    invoke-direct {v0}, Lcom/android/internal/compat/OverrideAllowedState$1;-><init>()V

    sput-object v0, Lcom/android/internal/compat/OverrideAllowedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4
    .param p1, "state"    # I
    .param p2, "appTargetSdk"    # I
    .param p3, "changeIdTargetSdk"    # I

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput p1, p0, Lcom/android/internal/compat/OverrideAllowedState;->state:I

    .line 87
    iput p2, p0, Lcom/android/internal/compat/OverrideAllowedState;->appTargetSdk:I

    .line 88
    iput p3, p0, Lcom/android/internal/compat/OverrideAllowedState;->changeIdTargetSdk:I

    .line 89
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/compat/OverrideAllowedState;->state:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/compat/OverrideAllowedState;->appTargetSdk:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/compat/OverrideAllowedState;->changeIdTargetSdk:I

    .line 83
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/compat/OverrideAllowedState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private stateName()Ljava/lang/String;
    .registers 2

    .line 170
    iget v0, p0, Lcom/android/internal/compat/OverrideAllowedState;->state:I

    packed-switch v0, :pswitch_data_1e

    .line 186
    const-string v0, "UNKNOWN"

    return-object v0

    .line 184
    :pswitch_8
    const-string v0, "PLATFORM_TOO_OLD"

    return-object v0

    .line 182
    :pswitch_b
    const-string v0, "LOGGING_ONLY_CHANGE"

    return-object v0

    .line 180
    :pswitch_e
    const-string v0, "DEFERRED_VERIFICATION"

    return-object v0

    .line 178
    :pswitch_11
    const-string v0, "DISABLED_TARGET_SDK_TOO_HIGH"

    return-object v0

    .line 176
    :pswitch_14
    const-string v0, "DISABLED_NON_TARGET_SDK"

    return-object v0

    .line 174
    :pswitch_17
    const-string v0, "DISABLED_NOT_DEBUGGABLE"

    return-object v0

    .line 172
    :pswitch_1a
    const-string v0, "ALLOWED"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public enforce(JLjava/lang/String;)V
    .registers 8
    .param p1, "changeId"    # J
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 112
    iget v0, p0, Lcom/android/internal/compat/OverrideAllowedState;->state:I

    packed-switch v0, :pswitch_data_66

    .line 137
    return-void

    .line 132
    :pswitch_6
    new-instance v0, Ljava/lang/SecurityException;

    .line 135
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/compat/OverrideAllowedState;->changeIdTargetSdk:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, p3, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 132
    const-string v2, "Cannot override %1$d for %2$s because the change\'s targetSdk threshold (%3$d) is above the platform sdk."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :pswitch_20
    new-instance v0, Ljava/lang/SecurityException;

    .line 130
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 128
    const-string v2, "Cannot override %1$d because it is marked as a logging-only change."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :pswitch_34
    new-instance v0, Ljava/lang/SecurityException;

    .line 126
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/compat/OverrideAllowedState;->appTargetSdk:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/compat/OverrideAllowedState;->changeIdTargetSdk:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, p3, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 123
    const-string v2, "Cannot override %1$d for %2$s because the app\'s targetSdk (%3$d) is above the change\'s targetSdk threshold (%4$d)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :pswitch_54
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Cannot override a default enabled/disabled change on a user build."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :pswitch_5c
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Cannot override a change on a non-debuggable app and user build."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :pswitch_64
    return-void

    nop

    :pswitch_data_66
    .packed-switch 0x0
        :pswitch_64
        :pswitch_5c
        :pswitch_54
        :pswitch_34
        :pswitch_64
        :pswitch_20
        :pswitch_6
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 154
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 155
    return v0

    .line 157
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 158
    return v1

    .line 160
    :cond_8
    instance-of v2, p1, Lcom/android/internal/compat/OverrideAllowedState;

    if-nez v2, :cond_d

    .line 161
    return v1

    .line 163
    :cond_d
    move-object v2, p1

    check-cast v2, Lcom/android/internal/compat/OverrideAllowedState;

    .line 164
    .local v2, "otherState":Lcom/android/internal/compat/OverrideAllowedState;
    iget v3, p0, Lcom/android/internal/compat/OverrideAllowedState;->state:I

    iget v4, v2, Lcom/android/internal/compat/OverrideAllowedState;->state:I

    if-ne v3, v4, :cond_23

    iget v3, p0, Lcom/android/internal/compat/OverrideAllowedState;->appTargetSdk:I

    iget v4, v2, Lcom/android/internal/compat/OverrideAllowedState;->appTargetSdk:I

    if-ne v3, v4, :cond_23

    iget v3, p0, Lcom/android/internal/compat/OverrideAllowedState;->changeIdTargetSdk:I

    iget v4, v2, Lcom/android/internal/compat/OverrideAllowedState;->changeIdTargetSdk:I

    if-ne v3, v4, :cond_23

    goto :goto_24

    :cond_23
    move v0, v1

    :goto_24
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OverrideAllowedState(state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/compat/OverrideAllowedState;->stateName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; appTargetSdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/compat/OverrideAllowedState;->appTargetSdk:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; changeIdTargetSdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/compat/OverrideAllowedState;->changeIdTargetSdk:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 98
    iget v0, p0, Lcom/android/internal/compat/OverrideAllowedState;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    iget v0, p0, Lcom/android/internal/compat/OverrideAllowedState;->appTargetSdk:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget v0, p0, Lcom/android/internal/compat/OverrideAllowedState;->changeIdTargetSdk:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    return-void
.end method

.class public final enum Landroid/location/LocationConstants$PAUSED_BY;
.super Ljava/lang/Enum;
.source "LocationConstants.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PAUSED_BY"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/location/LocationConstants$PAUSED_BY;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/location/LocationConstants$PAUSED_BY;

.field public static final enum APP_OPS:Landroid/location/LocationConstants$PAUSED_BY;

.field public static final enum BACKGROUND:Landroid/location/LocationConstants$PAUSED_BY;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/LocationConstants$PAUSED_BY;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum FOREGROUND:Landroid/location/LocationConstants$PAUSED_BY;

.field public static final enum FREEZE:Landroid/location/LocationConstants$PAUSED_BY;

.field public static final enum PERMISSION_CHECK:Landroid/location/LocationConstants$PAUSED_BY;

.field public static final enum PERMISSION_NONE:Landroid/location/LocationConstants$PAUSED_BY;

.field public static final enum UNKNOWN:Landroid/location/LocationConstants$PAUSED_BY;


# direct methods
.method private static synthetic $values()[Landroid/location/LocationConstants$PAUSED_BY;
    .registers 7

    .line 110
    sget-object v0, Landroid/location/LocationConstants$PAUSED_BY;->APP_OPS:Landroid/location/LocationConstants$PAUSED_BY;

    sget-object v1, Landroid/location/LocationConstants$PAUSED_BY;->FREEZE:Landroid/location/LocationConstants$PAUSED_BY;

    sget-object v2, Landroid/location/LocationConstants$PAUSED_BY;->PERMISSION_NONE:Landroid/location/LocationConstants$PAUSED_BY;

    sget-object v3, Landroid/location/LocationConstants$PAUSED_BY;->PERMISSION_CHECK:Landroid/location/LocationConstants$PAUSED_BY;

    sget-object v4, Landroid/location/LocationConstants$PAUSED_BY;->FOREGROUND:Landroid/location/LocationConstants$PAUSED_BY;

    sget-object v5, Landroid/location/LocationConstants$PAUSED_BY;->BACKGROUND:Landroid/location/LocationConstants$PAUSED_BY;

    sget-object v6, Landroid/location/LocationConstants$PAUSED_BY;->UNKNOWN:Landroid/location/LocationConstants$PAUSED_BY;

    filled-new-array/range {v0 .. v6}, [Landroid/location/LocationConstants$PAUSED_BY;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 111
    new-instance v0, Landroid/location/LocationConstants$PAUSED_BY;

    const-string v1, "APP_OPS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/location/LocationConstants$PAUSED_BY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/location/LocationConstants$PAUSED_BY;->APP_OPS:Landroid/location/LocationConstants$PAUSED_BY;

    new-instance v0, Landroid/location/LocationConstants$PAUSED_BY;

    const-string v1, "FREEZE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/location/LocationConstants$PAUSED_BY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/location/LocationConstants$PAUSED_BY;->FREEZE:Landroid/location/LocationConstants$PAUSED_BY;

    new-instance v0, Landroid/location/LocationConstants$PAUSED_BY;

    const-string v1, "PERMISSION_NONE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/location/LocationConstants$PAUSED_BY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/location/LocationConstants$PAUSED_BY;->PERMISSION_NONE:Landroid/location/LocationConstants$PAUSED_BY;

    new-instance v0, Landroid/location/LocationConstants$PAUSED_BY;

    const-string v1, "PERMISSION_CHECK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/location/LocationConstants$PAUSED_BY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/location/LocationConstants$PAUSED_BY;->PERMISSION_CHECK:Landroid/location/LocationConstants$PAUSED_BY;

    new-instance v0, Landroid/location/LocationConstants$PAUSED_BY;

    const-string v1, "FOREGROUND"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/location/LocationConstants$PAUSED_BY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/location/LocationConstants$PAUSED_BY;->FOREGROUND:Landroid/location/LocationConstants$PAUSED_BY;

    new-instance v0, Landroid/location/LocationConstants$PAUSED_BY;

    const-string v1, "BACKGROUND"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/location/LocationConstants$PAUSED_BY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/location/LocationConstants$PAUSED_BY;->BACKGROUND:Landroid/location/LocationConstants$PAUSED_BY;

    new-instance v0, Landroid/location/LocationConstants$PAUSED_BY;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/location/LocationConstants$PAUSED_BY;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/location/LocationConstants$PAUSED_BY;->UNKNOWN:Landroid/location/LocationConstants$PAUSED_BY;

    .line 110
    invoke-static {}, Landroid/location/LocationConstants$PAUSED_BY;->$values()[Landroid/location/LocationConstants$PAUSED_BY;

    move-result-object v0

    sput-object v0, Landroid/location/LocationConstants$PAUSED_BY;->$VALUES:[Landroid/location/LocationConstants$PAUSED_BY;

    .line 123
    new-instance v0, Landroid/location/LocationConstants$PAUSED_BY$1;

    invoke-direct {v0}, Landroid/location/LocationConstants$PAUSED_BY$1;-><init>()V

    sput-object v0, Landroid/location/LocationConstants$PAUSED_BY;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/location/LocationConstants$PAUSED_BY;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 110
    const-class v0, Landroid/location/LocationConstants$PAUSED_BY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/location/LocationConstants$PAUSED_BY;

    return-object v0
.end method

.method public static values()[Landroid/location/LocationConstants$PAUSED_BY;
    .registers 1

    .line 110
    sget-object v0, Landroid/location/LocationConstants$PAUSED_BY;->$VALUES:[Landroid/location/LocationConstants$PAUSED_BY;

    invoke-virtual {v0}, [Landroid/location/LocationConstants$PAUSED_BY;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/location/LocationConstants$PAUSED_BY;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 120
    invoke-virtual {p0}, Landroid/location/LocationConstants$PAUSED_BY;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    return-void
.end method

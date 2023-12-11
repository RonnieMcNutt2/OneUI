.class public Landroid/content/pm/LauncherActivityInfoInternal;
.super Ljava/lang/Object;
.source "LauncherActivityInfoInternal.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/LauncherActivityInfoInternal;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivityInfo:Landroid/content/pm/ActivityInfo;

.field private mComponentName:Landroid/content/ComponentName;

.field private mIncrementalStatesInfo:Landroid/content/pm/IncrementalStatesInfo;

.field private mUser:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 85
    new-instance v0, Landroid/content/pm/LauncherActivityInfoInternal$1;

    invoke-direct {v0}, Landroid/content/pm/LauncherActivityInfoInternal$1;-><init>()V

    sput-object v0, Landroid/content/pm/LauncherActivityInfoInternal;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/ActivityInfo;Landroid/content/pm/IncrementalStatesInfo;Landroid/os/UserHandle;)V
    .registers 7
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "incrementalStatesInfo"    # Landroid/content/pm/IncrementalStatesInfo;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/content/pm/LauncherActivityInfoInternal;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 45
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/pm/LauncherActivityInfoInternal;->mComponentName:Landroid/content/ComponentName;

    .line 46
    iput-object p2, p0, Landroid/content/pm/LauncherActivityInfoInternal;->mIncrementalStatesInfo:Landroid/content/pm/IncrementalStatesInfo;

    .line 47
    iput-object p3, p0, Landroid/content/pm/LauncherActivityInfoInternal;->mUser:Landroid/os/UserHandle;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Landroid/content/pm/ActivityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ActivityInfo;

    iput-object v0, p0, Landroid/content/pm/LauncherActivityInfoInternal;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 52
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/LauncherActivityInfoInternal;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/LauncherActivityInfoInternal;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/pm/LauncherActivityInfoInternal;->mComponentName:Landroid/content/ComponentName;

    .line 53
    sget-object v0, Landroid/content/pm/IncrementalStatesInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/IncrementalStatesInfo;

    iput-object v0, p0, Landroid/content/pm/LauncherActivityInfoInternal;->mIncrementalStatesInfo:Landroid/content/pm/IncrementalStatesInfo;

    .line 54
    sget-object v0, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Landroid/content/pm/LauncherActivityInfoInternal;->mUser:Landroid/os/UserHandle;

    .line 55
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public getActivityInfo()Landroid/content/pm/ActivityInfo;
    .registers 2

    .line 62
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfoInternal;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    return-object v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .registers 2

    .line 58
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfoInternal;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getIncrementalStatesInfo()Landroid/content/pm/IncrementalStatesInfo;
    .registers 2

    .line 70
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfoInternal;->mIncrementalStatesInfo:Landroid/content/pm/IncrementalStatesInfo;

    return-object v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .registers 2

    .line 66
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfoInternal;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 80
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfoInternal;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 81
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfoInternal;->mIncrementalStatesInfo:Landroid/content/pm/IncrementalStatesInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 82
    iget-object v0, p0, Landroid/content/pm/LauncherActivityInfoInternal;->mUser:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 83
    return-void
.end method

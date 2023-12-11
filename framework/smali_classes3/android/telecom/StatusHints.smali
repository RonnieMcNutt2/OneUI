.class public final Landroid/telecom/StatusHints;
.super Ljava/lang/Object;
.source "StatusHints.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/StatusHints;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mExtras:Landroid/os/Bundle;

.field private mIcon:Landroid/graphics/drawable/Icon;

.field private final mLabel:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 171
    new-instance v0, Landroid/telecom/StatusHints$1;

    invoke-direct {v0}, Landroid/telecom/StatusHints$1;-><init>()V

    sput-object v0, Landroid/telecom/StatusHints;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;Ljava/lang/CharSequence;ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "packageName"    # Landroid/content/ComponentName;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "iconResId"    # I
    .param p4, "extras"    # Landroid/os/Bundle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 50
    if-nez p3, :cond_4

    const/4 v0, 0x0

    goto :goto_c

    :cond_4
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    :goto_c
    invoke-direct {p0, p2, v0, p4}, Landroid/telecom/StatusHints;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/os/Bundle;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Icon;)V
    .registers 3
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/StatusHints;->mLabel:Ljava/lang/CharSequence;

    .line 67
    iput-object v0, p0, Landroid/telecom/StatusHints;->mExtras:Landroid/os/Bundle;

    .line 68
    iput-object p1, p0, Landroid/telecom/StatusHints;->mIcon:Landroid/graphics/drawable/Icon;

    .line 69
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/StatusHints;->mLabel:Ljava/lang/CharSequence;

    .line 184
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/graphics/drawable/Icon;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/telecom/StatusHints;->mIcon:Landroid/graphics/drawable/Icon;

    .line 185
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    iput-object v0, p0, Landroid/telecom/StatusHints;->mExtras:Landroid/os/Bundle;

    .line 186
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/telecom/StatusHints-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telecom/StatusHints;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # Landroid/graphics/drawable/Icon;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Landroid/telecom/StatusHints;->mLabel:Ljava/lang/CharSequence;

    .line 56
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/telecom/StatusHints;->validateAccountIconUserBoundary(Landroid/graphics/drawable/Icon;Landroid/os/UserHandle;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    iput-object v0, p0, Landroid/telecom/StatusHints;->mIcon:Landroid/graphics/drawable/Icon;

    .line 57
    iput-object p3, p0, Landroid/telecom/StatusHints;->mExtras:Landroid/os/Bundle;

    .line 58
    return-void
.end method

.method public static validateAccountIconUserBoundary(Landroid/graphics/drawable/Icon;Landroid/os/UserHandle;)Landroid/graphics/drawable/Icon;
    .registers 5
    .param p0, "icon"    # Landroid/graphics/drawable/Icon;
    .param p1, "callingUserHandle"    # Landroid/os/UserHandle;

    .line 151
    if-eqz p0, :cond_26

    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    .line 152
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_26

    .line 153
    :cond_10
    invoke-virtual {p0}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedUserInfo()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "encodedUser":Ljava/lang/String;
    if-eqz v0, :cond_26

    .line 156
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 158
    .local v1, "userId":I
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    if-eq v1, v2, :cond_26

    const/4 v2, 0x0

    return-object v2

    .line 161
    .end local v0    # "encodedUser":Ljava/lang/String;
    .end local v1    # "userId":I
    :cond_26
    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 190
    const/4 v0, 0x0

    if-eqz p1, :cond_38

    instance-of v1, p1, Landroid/telecom/StatusHints;

    if-eqz v1, :cond_38

    .line 191
    move-object v1, p1

    check-cast v1, Landroid/telecom/StatusHints;

    .line 192
    .local v1, "otherHints":Landroid/telecom/StatusHints;
    invoke-virtual {v1}, Landroid/telecom/StatusHints;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0}, Landroid/telecom/StatusHints;->getLabel()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 193
    invoke-virtual {v1}, Landroid/telecom/StatusHints;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    invoke-virtual {p0}, Landroid/telecom/StatusHints;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 194
    invoke-virtual {v1}, Landroid/telecom/StatusHints;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0}, Landroid/telecom/StatusHints;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    const/4 v0, 0x1

    goto :goto_37

    :cond_36
    nop

    .line 192
    :goto_37
    return v0

    .line 196
    .end local v1    # "otherHints":Landroid/telecom/StatusHints;
    :cond_38
    return v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .line 132
    iget-object v0, p0, Landroid/telecom/StatusHints;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 118
    iget-object v0, p0, Landroid/telecom/StatusHints;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 125
    iget-object v0, p0, Landroid/telecom/StatusHints;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getIconResId()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 108
    const/4 v0, 0x0

    return v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 95
    iget-object v0, p0, Landroid/telecom/StatusHints;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPackageName()Landroid/content/ComponentName;
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 88
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, ""

    invoke-direct {v0, v1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 201
    iget-object v0, p0, Landroid/telecom/StatusHints;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Landroid/telecom/StatusHints;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/telecom/StatusHints;->mExtras:Landroid/os/Bundle;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setIcon(Landroid/graphics/drawable/Icon;)V
    .registers 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 77
    iput-object p1, p0, Landroid/telecom/StatusHints;->mIcon:Landroid/graphics/drawable/Icon;

    .line 78
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 166
    iget-object v0, p0, Landroid/telecom/StatusHints;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Landroid/telecom/StatusHints;->mIcon:Landroid/graphics/drawable/Icon;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 168
    iget-object v0, p0, Landroid/telecom/StatusHints;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 169
    return-void
.end method

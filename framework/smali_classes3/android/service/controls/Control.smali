.class public final Landroid/service/controls/Control;
.super Ljava/lang/Object;
.source "Control.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/controls/Control$StatefulBuilder;,
        Landroid/service/controls/Control$StatelessBuilder;,
        Landroid/service/controls/Control$Status;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/controls/Control;",
            ">;"
        }
    .end annotation
.end field

.field private static final NUM_STATUS:I = 0x5

.field public static final STATUS_DISABLED:I = 0x4

.field public static final STATUS_ERROR:I = 0x3

.field public static final STATUS_NOT_FOUND:I = 0x2

.field public static final STATUS_OK:I = 0x1

.field public static final STATUS_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Control"


# instance fields
.field private final mAppIntent:Landroid/app/PendingIntent;

.field private final mAuthRequired:Z

.field private final mControlId:Ljava/lang/String;

.field private final mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

.field private final mCustomColor:Landroid/content/res/ColorStateList;

.field private mCustomControl:Landroid/service/controls/CustomControl;

.field private final mCustomIcon:Landroid/graphics/drawable/Icon;

.field private final mDeviceType:I

.field private final mStatus:I

.field private final mStatusText:Ljava/lang/CharSequence;

.field private final mStructure:Ljava/lang/CharSequence;

.field private final mSubtitle:Ljava/lang/CharSequence;

.field private final mTitle:Ljava/lang/CharSequence;

.field private final mZone:Ljava/lang/CharSequence;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAppIntent(Landroid/service/controls/Control;)Landroid/app/PendingIntent;
    .registers 1

    iget-object p0, p0, Landroid/service/controls/Control;->mAppIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAuthRequired(Landroid/service/controls/Control;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/service/controls/Control;->mAuthRequired:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmControlId(Landroid/service/controls/Control;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/service/controls/Control;->mControlId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmControlTemplate(Landroid/service/controls/Control;)Landroid/service/controls/templates/ControlTemplate;
    .registers 1

    iget-object p0, p0, Landroid/service/controls/Control;->mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCustomColor(Landroid/service/controls/Control;)Landroid/content/res/ColorStateList;
    .registers 1

    iget-object p0, p0, Landroid/service/controls/Control;->mCustomColor:Landroid/content/res/ColorStateList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCustomControl(Landroid/service/controls/Control;)Landroid/service/controls/CustomControl;
    .registers 1

    iget-object p0, p0, Landroid/service/controls/Control;->mCustomControl:Landroid/service/controls/CustomControl;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCustomIcon(Landroid/service/controls/Control;)Landroid/graphics/drawable/Icon;
    .registers 1

    iget-object p0, p0, Landroid/service/controls/Control;->mCustomIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceType(Landroid/service/controls/Control;)I
    .registers 1

    iget p0, p0, Landroid/service/controls/Control;->mDeviceType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStatus(Landroid/service/controls/Control;)I
    .registers 1

    iget p0, p0, Landroid/service/controls/Control;->mStatus:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStatusText(Landroid/service/controls/Control;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/service/controls/Control;->mStatusText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStructure(Landroid/service/controls/Control;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/service/controls/Control;->mStructure:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubtitle(Landroid/service/controls/Control;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/service/controls/Control;->mSubtitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTitle(Landroid/service/controls/Control;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/service/controls/Control;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmZone(Landroid/service/controls/Control;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/service/controls/Control;->mZone:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCustomControl(Landroid/service/controls/Control;Landroid/service/controls/CustomControl;)V
    .registers 2

    iput-object p1, p0, Landroid/service/controls/Control;->mCustomControl:Landroid/service/controls/CustomControl;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 420
    new-instance v0, Landroid/service/controls/Control$1;

    invoke-direct {v0}, Landroid/service/controls/Control$1;-><init>()V

    sput-object v0, Landroid/service/controls/Control;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control;->mControlId:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/controls/Control;->mDeviceType:I

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control;->mTitle:Ljava/lang/CharSequence;

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control;->mSubtitle:Ljava/lang/CharSequence;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2a

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control;->mStructure:Ljava/lang/CharSequence;

    goto :goto_2c

    .line 210
    :cond_2a
    iput-object v1, p0, Landroid/service/controls/Control;->mStructure:Ljava/lang/CharSequence;

    .line 212
    :goto_2c
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_39

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/service/controls/Control;->mZone:Ljava/lang/CharSequence;

    goto :goto_3b

    .line 215
    :cond_39
    iput-object v1, p0, Landroid/service/controls/Control;->mZone:Ljava/lang/CharSequence;

    .line 217
    :goto_3b
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    iput-object v0, p0, Landroid/service/controls/Control;->mAppIntent:Landroid/app/PendingIntent;

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_56

    .line 220
    sget-object v0, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    iput-object v0, p0, Landroid/service/controls/Control;->mCustomIcon:Landroid/graphics/drawable/Icon;

    goto :goto_58

    .line 222
    :cond_56
    iput-object v1, p0, Landroid/service/controls/Control;->mCustomIcon:Landroid/graphics/drawable/Icon;

    .line 225
    :goto_58
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v2, :cond_69

    .line 226
    sget-object v0, Landroid/content/res/ColorStateList;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/service/controls/Control;->mCustomColor:Landroid/content/res/ColorStateList;

    goto :goto_6b

    .line 228
    :cond_69
    iput-object v1, p0, Landroid/service/controls/Control;->mCustomColor:Landroid/content/res/ColorStateList;

    .line 231
    :goto_6b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/controls/Control;->mStatus:I

    .line 232
    sget-object v0, Landroid/service/controls/templates/ControlTemplateWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/controls/templates/ControlTemplateWrapper;

    .line 233
    .local v0, "wrapper":Landroid/service/controls/templates/ControlTemplateWrapper;
    invoke-virtual {v0}, Landroid/service/controls/templates/ControlTemplateWrapper;->getWrappedTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object v1

    iput-object v1, p0, Landroid/service/controls/Control;->mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/service/controls/Control;->mStatusText:Ljava/lang/CharSequence;

    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Landroid/service/controls/Control;->mAuthRequired:Z

    .line 238
    sget-object v1, Landroid/service/controls/CustomControl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/controls/CustomControl;

    iput-object v1, p0, Landroid/service/controls/Control;->mCustomControl:Landroid/service/controls/CustomControl;

    .line 240
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/graphics/drawable/Icon;Landroid/content/res/ColorStateList;ILandroid/service/controls/templates/ControlTemplate;Ljava/lang/CharSequence;Z)V
    .registers 29
    .param p1, "controlId"    # Ljava/lang/String;
    .param p2, "deviceType"    # I
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "subtitle"    # Ljava/lang/CharSequence;
    .param p5, "structure"    # Ljava/lang/CharSequence;
    .param p6, "zone"    # Ljava/lang/CharSequence;
    .param p7, "appIntent"    # Landroid/app/PendingIntent;
    .param p8, "customIcon"    # Landroid/graphics/drawable/Icon;
    .param p9, "customColor"    # Landroid/content/res/ColorStateList;
    .param p10, "status"    # I
    .param p11, "controlTemplate"    # Landroid/service/controls/templates/ControlTemplate;
    .param p12, "statusText"    # Ljava/lang/CharSequence;
    .param p13, "authRequired"    # Z

    .line 160
    move-object v0, p0

    move/from16 v1, p2

    move/from16 v2, p10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-static/range {p7 .. p7}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-static/range {p11 .. p11}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static/range {p12 .. p12}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    move-object/from16 v3, p1

    iput-object v3, v0, Landroid/service/controls/Control;->mControlId:Ljava/lang/String;

    .line 168
    invoke-static/range {p2 .. p2}, Landroid/service/controls/DeviceTypes;->validDeviceType(I)Z

    move-result v4

    const/4 v5, 0x0

    const-string v6, "Control"

    if-nez v4, :cond_40

    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid device type:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iput v5, v0, Landroid/service/controls/Control;->mDeviceType:I

    goto :goto_42

    .line 172
    :cond_40
    iput v1, v0, Landroid/service/controls/Control;->mDeviceType:I

    .line 174
    :goto_42
    move-object/from16 v4, p3

    iput-object v4, v0, Landroid/service/controls/Control;->mTitle:Ljava/lang/CharSequence;

    .line 175
    move-object/from16 v7, p4

    iput-object v7, v0, Landroid/service/controls/Control;->mSubtitle:Ljava/lang/CharSequence;

    .line 176
    move-object/from16 v8, p5

    iput-object v8, v0, Landroid/service/controls/Control;->mStructure:Ljava/lang/CharSequence;

    .line 177
    move-object/from16 v9, p6

    iput-object v9, v0, Landroid/service/controls/Control;->mZone:Ljava/lang/CharSequence;

    .line 178
    move-object/from16 v10, p7

    iput-object v10, v0, Landroid/service/controls/Control;->mAppIntent:Landroid/app/PendingIntent;

    .line 180
    move-object/from16 v11, p9

    iput-object v11, v0, Landroid/service/controls/Control;->mCustomColor:Landroid/content/res/ColorStateList;

    .line 181
    move-object/from16 v12, p8

    iput-object v12, v0, Landroid/service/controls/Control;->mCustomIcon:Landroid/graphics/drawable/Icon;

    .line 183
    if-ltz v2, :cond_67

    const/4 v13, 0x5

    if-lt v2, v13, :cond_64

    goto :goto_67

    .line 187
    :cond_64
    iput v2, v0, Landroid/service/controls/Control;->mStatus:I

    goto :goto_7f

    .line 184
    :cond_67
    :goto_67
    iput v5, v0, Landroid/service/controls/Control;->mStatus:I

    .line 185
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Status unknown:"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :goto_7f
    move-object/from16 v5, p11

    iput-object v5, v0, Landroid/service/controls/Control;->mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

    .line 190
    move-object/from16 v6, p12

    iput-object v6, v0, Landroid/service/controls/Control;->mStatusText:Ljava/lang/CharSequence;

    .line 191
    move/from16 v13, p13

    iput-boolean v13, v0, Landroid/service/controls/Control;->mAuthRequired:Z

    .line 194
    new-instance v14, Landroid/service/controls/CustomControl;

    invoke-direct {v14}, Landroid/service/controls/CustomControl;-><init>()V

    iput-object v14, v0, Landroid/service/controls/Control;->mCustomControl:Landroid/service/controls/CustomControl;

    .line 196
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 375
    const/4 v0, 0x0

    return v0
.end method

.method public getAppIntent()Landroid/app/PendingIntent;
    .registers 2

    .line 304
    iget-object v0, p0, Landroid/service/controls/Control;->mAppIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getControlId()Ljava/lang/String;
    .registers 2

    .line 247
    iget-object v0, p0, Landroid/service/controls/Control;->mControlId:Ljava/lang/String;

    return-object v0
.end method

.method public getControlTemplate()Landroid/service/controls/templates/ControlTemplate;
    .registers 2

    .line 345
    iget-object v0, p0, Landroid/service/controls/Control;->mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

    return-object v0
.end method

.method public getCustomColor()Landroid/content/res/ColorStateList;
    .registers 2

    .line 327
    iget-object v0, p0, Landroid/service/controls/Control;->mCustomColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getCustomControl()Landroid/service/controls/CustomControl;
    .registers 2

    .line 370
    iget-object v0, p0, Landroid/service/controls/Control;->mCustomControl:Landroid/service/controls/CustomControl;

    return-object v0
.end method

.method public getCustomIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 315
    iget-object v0, p0, Landroid/service/controls/Control;->mCustomIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public getDeviceType()I
    .registers 2

    .line 257
    iget v0, p0, Landroid/service/controls/Control;->mDeviceType:I

    return v0
.end method

.method public getStatus()I
    .registers 2

    .line 336
    iget v0, p0, Landroid/service/controls/Control;->mStatus:I

    return v0
.end method

.method public getStatusText()Ljava/lang/CharSequence;
    .registers 2

    .line 354
    iget-object v0, p0, Landroid/service/controls/Control;->mStatusText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getStructure()Ljava/lang/CharSequence;
    .registers 2

    .line 285
    iget-object v0, p0, Landroid/service/controls/Control;->mStructure:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .registers 2

    .line 273
    iget-object v0, p0, Landroid/service/controls/Control;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 265
    iget-object v0, p0, Landroid/service/controls/Control;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getZone()Ljava/lang/CharSequence;
    .registers 2

    .line 296
    iget-object v0, p0, Landroid/service/controls/Control;->mZone:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isAuthRequired()Z
    .registers 2

    .line 361
    iget-boolean v0, p0, Landroid/service/controls/Control;->mAuthRequired:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 380
    iget-object v0, p0, Landroid/service/controls/Control;->mControlId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 381
    iget v0, p0, Landroid/service/controls/Control;->mDeviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    iget-object v0, p0, Landroid/service/controls/Control;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v0, p0, Landroid/service/controls/Control;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v0, p0, Landroid/service/controls/Control;->mStructure:Ljava/lang/CharSequence;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    .line 385
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 386
    iget-object v0, p0, Landroid/service/controls/Control;->mStructure:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    goto :goto_26

    .line 388
    :cond_23
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 390
    :goto_26
    iget-object v0, p0, Landroid/service/controls/Control;->mZone:Ljava/lang/CharSequence;

    if-eqz v0, :cond_33

    .line 391
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 392
    iget-object v0, p0, Landroid/service/controls/Control;->mZone:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    goto :goto_36

    .line 394
    :cond_33
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 396
    :goto_36
    iget-object v0, p0, Landroid/service/controls/Control;->mAppIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, p2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 397
    iget-object v0, p0, Landroid/service/controls/Control;->mCustomIcon:Landroid/graphics/drawable/Icon;

    if-eqz v0, :cond_48

    .line 398
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 399
    iget-object v0, p0, Landroid/service/controls/Control;->mCustomIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_4b

    .line 401
    :cond_48
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 403
    :goto_4b
    iget-object v0, p0, Landroid/service/controls/Control;->mCustomColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_58

    .line 404
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 405
    iget-object v0, p0, Landroid/service/controls/Control;->mCustomColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, p1, p2}, Landroid/content/res/ColorStateList;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5b

    .line 407
    :cond_58
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeByte(B)V

    .line 410
    :goto_5b
    iget v0, p0, Landroid/service/controls/Control;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 411
    new-instance v0, Landroid/service/controls/templates/ControlTemplateWrapper;

    iget-object v1, p0, Landroid/service/controls/Control;->mControlTemplate:Landroid/service/controls/templates/ControlTemplate;

    invoke-direct {v0, v1}, Landroid/service/controls/templates/ControlTemplateWrapper;-><init>(Landroid/service/controls/templates/ControlTemplate;)V

    invoke-virtual {v0, p1, p2}, Landroid/service/controls/templates/ControlTemplateWrapper;->writeToParcel(Landroid/os/Parcel;I)V

    .line 412
    iget-object v0, p0, Landroid/service/controls/Control;->mStatusText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 413
    iget-boolean v0, p0, Landroid/service/controls/Control;->mAuthRequired:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 416
    iget-object v0, p0, Landroid/service/controls/Control;->mCustomControl:Landroid/service/controls/CustomControl;

    invoke-virtual {v0, p1, p2}, Landroid/service/controls/CustomControl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 418
    return-void
.end method

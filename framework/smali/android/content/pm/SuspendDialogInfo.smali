.class public final Landroid/content/pm/SuspendDialogInfo;
.super Ljava/lang/Object;
.source "SuspendDialogInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/SuspendDialogInfo$Builder;,
        Landroid/content/pm/SuspendDialogInfo$ButtonAction;
    }
.end annotation


# static fields
.field public static final BUTTON_ACTION_MORE_DETAILS:I = 0x0

.field public static final BUTTON_ACTION_UNSUSPEND:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/SuspendDialogInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static final XML_ATTR_BUTTON_ACTION:Ljava/lang/String; = "buttonAction"

.field private static final XML_ATTR_BUTTON_TEXT:Ljava/lang/String; = "buttonText"

.field private static final XML_ATTR_BUTTON_TEXT_RES_ID:Ljava/lang/String; = "buttonTextResId"

.field private static final XML_ATTR_DIALOG_MESSAGE:Ljava/lang/String; = "dialogMessage"

.field private static final XML_ATTR_DIALOG_MESSAGE_RES_ID:Ljava/lang/String; = "dialogMessageResId"

.field private static final XML_ATTR_ICON_RES_ID:Ljava/lang/String; = "iconResId"

.field private static final XML_ATTR_TITLE:Ljava/lang/String; = "title"

.field private static final XML_ATTR_TITLE_RES_ID:Ljava/lang/String; = "titleResId"


# instance fields
.field private final mDialogMessage:Ljava/lang/String;

.field private final mDialogMessageResId:I

.field private final mIconResId:I

.field private final mNeutralButtonAction:I

.field private final mNeutralButtonText:Ljava/lang/String;

.field private final mNeutralButtonTextResId:I

.field private final mTitle:Ljava/lang/String;

.field private final mTitleResId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 65
    const-class v0, Landroid/content/pm/SuspendDialogInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/pm/SuspendDialogInfo;->TAG:Ljava/lang/String;

    .line 373
    new-instance v0, Landroid/content/pm/SuspendDialogInfo$1;

    invoke-direct {v0}, Landroid/content/pm/SuspendDialogInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/SuspendDialogInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/content/pm/SuspendDialogInfo$Builder;)V
    .registers 4
    .param p1, "b"    # Landroid/content/pm/SuspendDialogInfo$Builder;

    .line 362
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    invoke-static {p1}, Landroid/content/pm/SuspendDialogInfo$Builder;->-$$Nest$fgetmIconResId(Landroid/content/pm/SuspendDialogInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/SuspendDialogInfo;->mIconResId:I

    .line 364
    invoke-static {p1}, Landroid/content/pm/SuspendDialogInfo$Builder;->-$$Nest$fgetmTitleResId(Landroid/content/pm/SuspendDialogInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/SuspendDialogInfo;->mTitleResId:I

    .line 365
    const/4 v1, 0x0

    if-nez v0, :cond_17

    invoke-static {p1}, Landroid/content/pm/SuspendDialogInfo$Builder;->-$$Nest$fgetmTitle(Landroid/content/pm/SuspendDialogInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    goto :goto_18

    :cond_17
    move-object v0, v1

    :goto_18
    iput-object v0, p0, Landroid/content/pm/SuspendDialogInfo;->mTitle:Ljava/lang/String;

    .line 366
    invoke-static {p1}, Landroid/content/pm/SuspendDialogInfo$Builder;->-$$Nest$fgetmDialogMessageResId(Landroid/content/pm/SuspendDialogInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessageResId:I

    .line 367
    if-nez v0, :cond_27

    invoke-static {p1}, Landroid/content/pm/SuspendDialogInfo$Builder;->-$$Nest$fgetmDialogMessage(Landroid/content/pm/SuspendDialogInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    :cond_27
    move-object v0, v1

    :goto_28
    iput-object v0, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessage:Ljava/lang/String;

    .line 368
    invoke-static {p1}, Landroid/content/pm/SuspendDialogInfo$Builder;->-$$Nest$fgetmNeutralButtonTextResId(Landroid/content/pm/SuspendDialogInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonTextResId:I

    .line 369
    if-nez v0, :cond_36

    invoke-static {p1}, Landroid/content/pm/SuspendDialogInfo$Builder;->-$$Nest$fgetmNeutralButtonText(Landroid/content/pm/SuspendDialogInfo$Builder;)Ljava/lang/String;

    move-result-object v1

    :cond_36
    iput-object v1, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonText:Ljava/lang/String;

    .line 370
    invoke-static {p1}, Landroid/content/pm/SuspendDialogInfo$Builder;->-$$Nest$fgetmNeutralButtonAction(Landroid/content/pm/SuspendDialogInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonAction:I

    .line 371
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/SuspendDialogInfo;->mIconResId:I

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/SuspendDialogInfo;->mTitleResId:I

    .line 354
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/SuspendDialogInfo;->mTitle:Ljava/lang/String;

    .line 355
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessageResId:I

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessage:Ljava/lang/String;

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonTextResId:I

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonText:Ljava/lang/String;

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonAction:I

    .line 360
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/SuspendDialogInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/pm/SuspendDialogInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/content/pm/SuspendDialogInfo;
    .registers 11
    .param p0, "in"    # Lcom/android/modules/utils/TypedXmlPullParser;

    .line 221
    new-instance v0, Landroid/content/pm/SuspendDialogInfo$Builder;

    invoke-direct {v0}, Landroid/content/pm/SuspendDialogInfo$Builder;-><init>()V

    .line 223
    .local v0, "dialogInfoBuilder":Landroid/content/pm/SuspendDialogInfo$Builder;
    :try_start_5
    const-string v1, "iconResId"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p0, v3, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 224
    .local v1, "iconId":I
    const-string/jumbo v4, "titleResId"

    invoke-interface {p0, v3, v4, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 225
    .local v4, "titleId":I
    const-string/jumbo v5, "title"

    invoke-static {p0, v5}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 226
    .local v5, "title":Ljava/lang/String;
    const-string v6, "buttonTextResId"

    .line 227
    invoke-interface {p0, v3, v6, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 228
    .local v6, "buttonTextId":I
    const-string v7, "buttonText"

    invoke-static {p0, v7}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 229
    .local v7, "buttonText":Ljava/lang/String;
    const-string v8, "buttonAction"

    .line 230
    invoke-interface {p0, v3, v8, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    .line 231
    .local v8, "buttonAction":I
    const-string v9, "dialogMessageResId"

    .line 232
    invoke-interface {p0, v3, v9, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 233
    .local v2, "dialogMessageResId":I
    const-string v3, "dialogMessage"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 235
    .local v3, "dialogMessage":Ljava/lang/String;
    if-eqz v1, :cond_3e

    .line 236
    invoke-virtual {v0, v1}, Landroid/content/pm/SuspendDialogInfo$Builder;->setIcon(I)Landroid/content/pm/SuspendDialogInfo$Builder;

    .line 238
    :cond_3e
    if-eqz v4, :cond_44

    .line 239
    invoke-virtual {v0, v4}, Landroid/content/pm/SuspendDialogInfo$Builder;->setTitle(I)Landroid/content/pm/SuspendDialogInfo$Builder;

    goto :goto_49

    .line 240
    :cond_44
    if-eqz v5, :cond_49

    .line 241
    invoke-virtual {v0, v5}, Landroid/content/pm/SuspendDialogInfo$Builder;->setTitle(Ljava/lang/String;)Landroid/content/pm/SuspendDialogInfo$Builder;

    .line 243
    :cond_49
    :goto_49
    if-eqz v6, :cond_4f

    .line 244
    invoke-virtual {v0, v6}, Landroid/content/pm/SuspendDialogInfo$Builder;->setNeutralButtonText(I)Landroid/content/pm/SuspendDialogInfo$Builder;

    goto :goto_54

    .line 245
    :cond_4f
    if-eqz v7, :cond_54

    .line 246
    invoke-virtual {v0, v7}, Landroid/content/pm/SuspendDialogInfo$Builder;->setNeutralButtonText(Ljava/lang/String;)Landroid/content/pm/SuspendDialogInfo$Builder;

    .line 248
    :cond_54
    :goto_54
    if-eqz v2, :cond_5a

    .line 249
    invoke-virtual {v0, v2}, Landroid/content/pm/SuspendDialogInfo$Builder;->setMessage(I)Landroid/content/pm/SuspendDialogInfo$Builder;

    goto :goto_5f

    .line 250
    :cond_5a
    if-eqz v3, :cond_5f

    .line 251
    invoke-virtual {v0, v3}, Landroid/content/pm/SuspendDialogInfo$Builder;->setMessage(Ljava/lang/String;)Landroid/content/pm/SuspendDialogInfo$Builder;

    .line 253
    :cond_5f
    :goto_5f
    invoke-virtual {v0, v8}, Landroid/content/pm/SuspendDialogInfo$Builder;->setNeutralButtonAction(I)Landroid/content/pm/SuspendDialogInfo$Builder;
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_62} :catch_64

    .line 256
    nop

    .end local v1    # "iconId":I
    .end local v2    # "dialogMessageResId":I
    .end local v3    # "dialogMessage":Ljava/lang/String;
    .end local v4    # "titleId":I
    .end local v5    # "title":Ljava/lang/String;
    .end local v6    # "buttonTextId":I
    .end local v7    # "buttonText":Ljava/lang/String;
    .end local v8    # "buttonAction":I
    goto :goto_6c

    .line 254
    :catch_64
    move-exception v1

    .line 255
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Landroid/content/pm/SuspendDialogInfo;->TAG:Ljava/lang/String;

    const-string v3, "Exception while parsing from xml. Some fields may default"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 257
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_6c
    invoke-virtual {v0}, Landroid/content/pm/SuspendDialogInfo$Builder;->build()Landroid/content/pm/SuspendDialogInfo;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 336
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 275
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 276
    return v0

    .line 278
    :cond_4
    instance-of v1, p1, Landroid/content/pm/SuspendDialogInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 279
    return v2

    .line 281
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/content/pm/SuspendDialogInfo;

    .line 282
    .local v1, "otherDialogInfo":Landroid/content/pm/SuspendDialogInfo;
    iget v3, p0, Landroid/content/pm/SuspendDialogInfo;->mIconResId:I

    iget v4, v1, Landroid/content/pm/SuspendDialogInfo;->mIconResId:I

    if-ne v3, v4, :cond_4a

    iget v3, p0, Landroid/content/pm/SuspendDialogInfo;->mTitleResId:I

    iget v4, v1, Landroid/content/pm/SuspendDialogInfo;->mTitleResId:I

    if-ne v3, v4, :cond_4a

    iget-object v3, p0, Landroid/content/pm/SuspendDialogInfo;->mTitle:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/SuspendDialogInfo;->mTitle:Ljava/lang/String;

    .line 284
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget v3, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessageResId:I

    iget v4, v1, Landroid/content/pm/SuspendDialogInfo;->mDialogMessageResId:I

    if-ne v3, v4, :cond_4a

    iget-object v3, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessage:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/SuspendDialogInfo;->mDialogMessage:Ljava/lang/String;

    .line 286
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget v3, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonTextResId:I

    iget v4, v1, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonTextResId:I

    if-ne v3, v4, :cond_4a

    iget-object v3, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonText:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonText:Ljava/lang/String;

    .line 288
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    iget v3, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonAction:I

    iget v4, v1, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonAction:I

    if-ne v3, v4, :cond_4a

    goto :goto_4b

    :cond_4a
    move v0, v2

    .line 282
    :goto_4b
    return v0
.end method

.method public getDialogMessage()Ljava/lang/String;
    .registers 2

    .line 161
    iget-object v0, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getDialogMessageResId()I
    .registers 2

    .line 151
    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessageResId:I

    return v0
.end method

.method public getIconResId()I
    .registers 2

    .line 123
    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mIconResId:I

    return v0
.end method

.method public getNeutralButtonAction()I
    .registers 2

    .line 189
    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonAction:I

    return v0
.end method

.method public getNeutralButtonText()Ljava/lang/String;
    .registers 2

    .line 180
    iget-object v0, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonText:Ljava/lang/String;

    return-object v0
.end method

.method public getNeutralButtonTextResId()I
    .registers 2

    .line 170
    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonTextResId:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    .line 142
    iget-object v0, p0, Landroid/content/pm/SuspendDialogInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTitleResId()I
    .registers 2

    .line 132
    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mTitleResId:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 262
    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mIconResId:I

    .line 263
    .local v0, "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/pm/SuspendDialogInfo;->mTitleResId:I

    add-int/2addr v1, v2

    .line 264
    .end local v0    # "hashCode":I
    .local v1, "hashCode":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/content/pm/SuspendDialogInfo;->mTitle:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 265
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonTextResId:I

    add-int/2addr v1, v2

    .line 266
    .end local v0    # "hashCode":I
    .restart local v1    # "hashCode":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonText:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 267
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessageResId:I

    add-int/2addr v1, v2

    .line 268
    .end local v0    # "hashCode":I
    .restart local v1    # "hashCode":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessage:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 269
    .end local v1    # "hashCode":I
    .restart local v0    # "hashCode":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonAction:I

    add-int/2addr v1, v2

    .line 270
    .end local v0    # "hashCode":I
    .restart local v1    # "hashCode":I
    return v1
.end method

.method public saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 5
    .param p1, "out"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mIconResId:I

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 197
    const-string v2, "iconResId"

    invoke-interface {p1, v1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 199
    :cond_a
    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mTitleResId:I

    if-eqz v0, :cond_15

    .line 200
    const-string/jumbo v2, "titleResId"

    invoke-interface {p1, v1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1d

    .line 202
    :cond_15
    const-string/jumbo v0, "title"

    iget-object v2, p0, Landroid/content/pm/SuspendDialogInfo;->mTitle:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 204
    :goto_1d
    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessageResId:I

    if-eqz v0, :cond_27

    .line 205
    const-string v2, "dialogMessageResId"

    invoke-interface {p1, v1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2e

    .line 207
    :cond_27
    const-string v0, "dialogMessage"

    iget-object v2, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessage:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 209
    :goto_2e
    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonTextResId:I

    if-eqz v0, :cond_38

    .line 210
    const-string v2, "buttonTextResId"

    invoke-interface {p1, v1, v2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3f

    .line 212
    :cond_38
    const-string v0, "buttonText"

    iget-object v2, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonText:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 214
    :goto_3f
    const-string v0, "buttonAction"

    iget v2, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonAction:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 215
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SuspendDialogInfo: {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/content/pm/SuspendDialogInfo;->mIconResId:I

    const-string v2, " "

    if-eqz v1, :cond_1f

    .line 297
    const-string/jumbo v1, "mIconId = 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    iget v1, p0, Landroid/content/pm/SuspendDialogInfo;->mIconResId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    :cond_1f
    iget v1, p0, Landroid/content/pm/SuspendDialogInfo;->mTitleResId:I

    const-string v3, "\""

    if-eqz v1, :cond_38

    .line 302
    const-string/jumbo v1, "mTitleResId = 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    iget v1, p0, Landroid/content/pm/SuspendDialogInfo;->mTitleResId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4a

    .line 305
    :cond_38
    iget-object v1, p0, Landroid/content/pm/SuspendDialogInfo;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_4a

    .line 306
    const-string/jumbo v1, "mTitle = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    iget-object v1, p0, Landroid/content/pm/SuspendDialogInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    :cond_4a
    :goto_4a
    iget v1, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonTextResId:I

    if-eqz v1, :cond_61

    .line 311
    const-string/jumbo v1, "mNeutralButtonTextResId = 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    iget v1, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonTextResId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_73

    .line 314
    :cond_61
    iget-object v1, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonText:Ljava/lang/String;

    if-eqz v1, :cond_73

    .line 315
    const-string/jumbo v1, "mNeutralButtonText = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    iget-object v1, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :cond_73
    :goto_73
    iget v1, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessageResId:I

    if-eqz v1, :cond_8a

    .line 320
    const-string/jumbo v1, "mDialogMessageResId = 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    iget v1, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessageResId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9e

    .line 323
    :cond_8a
    iget-object v1, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessage:Ljava/lang/String;

    if-eqz v1, :cond_9e

    .line 324
    const-string/jumbo v1, "mDialogMessage = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    iget-object v1, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    :cond_9e
    :goto_9e
    const-string/jumbo v1, "mNeutralButtonAction = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    iget v1, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 330
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .line 341
    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mIconResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mTitleResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    iget-object v0, p0, Landroid/content/pm/SuspendDialogInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 344
    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessageResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    iget-object v0, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 346
    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonTextResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    iget-object v0, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 348
    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    return-void
.end method

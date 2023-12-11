.class public final Landroid/view/translation/TranslationCapability;
.super Ljava/lang/Object;
.source "TranslationCapability.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/translation/TranslationCapability$ModelState;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/translation/TranslationCapability;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATE_AVAILABLE_TO_DOWNLOAD:I = 0x1

.field public static final STATE_DOWNLOADING:I = 0x2

.field public static final STATE_NOT_AVAILABLE:I = 0x4

.field public static final STATE_ON_DEVICE:I = 0x3

.field public static final STATE_REMOVED_AND_AVAILABLE:I = 0x3e8


# instance fields
.field private final mSourceSpec:Landroid/view/translation/TranslationSpec;

.field private final mState:I

.field private final mSupportedTranslationFlags:I

.field private final mTargetSpec:Landroid/view/translation/TranslationSpec;

.field private final mUiTranslationEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 297
    new-instance v0, Landroid/view/translation/TranslationCapability$1;

    invoke-direct {v0}, Landroid/view/translation/TranslationCapability$1;-><init>()V

    sput-object v0, Landroid/view/translation/TranslationCapability;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILandroid/view/translation/TranslationSpec;Landroid/view/translation/TranslationSpec;ZI)V
    .registers 7
    .param p1, "state"    # I
    .param p2, "sourceSpec"    # Landroid/view/translation/TranslationSpec;
    .param p3, "targetSpec"    # Landroid/view/translation/TranslationSpec;
    .param p4, "uiTranslationEnabled"    # Z
    .param p5, "supportedTranslationFlags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const-string/jumbo v0, "sourceSpec should not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 118
    const-string/jumbo v0, "targetSpec should not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 120
    iput p1, p0, Landroid/view/translation/TranslationCapability;->mState:I

    .line 121
    iput-object p2, p0, Landroid/view/translation/TranslationCapability;->mSourceSpec:Landroid/view/translation/TranslationSpec;

    .line 122
    iput-object p3, p0, Landroid/view/translation/TranslationCapability;->mTargetSpec:Landroid/view/translation/TranslationSpec;

    .line 123
    iput-boolean p4, p0, Landroid/view/translation/TranslationCapability;->mUiTranslationEnabled:Z

    .line 124
    iput p5, p0, Landroid/view/translation/TranslationCapability;->mSupportedTranslationFlags:I

    .line 125
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 16
    .param p1, "in"    # Landroid/os/Parcel;

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 260
    .local v0, "flg":B
    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    move v1, v2

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    .line 261
    .local v1, "uiTranslationEnabled":Z
    :goto_f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 262
    .local v3, "state":I
    sget-object v4, Landroid/view/translation/TranslationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/translation/TranslationSpec;

    .line 263
    .local v4, "sourceSpec":Landroid/view/translation/TranslationSpec;
    sget-object v5, Landroid/view/translation/TranslationSpec;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/translation/TranslationSpec;

    .line 264
    .local v5, "targetSpec":Landroid/view/translation/TranslationSpec;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 266
    .local v6, "supportedTranslationFlags":I
    iput v3, p0, Landroid/view/translation/TranslationCapability;->mState:I

    .line 268
    if-eq v3, v2, :cond_8b

    const/4 v7, 0x2

    if-eq v3, v7, :cond_8b

    const/4 v8, 0x3

    if-eq v3, v8, :cond_8b

    const/4 v9, 0x4

    if-eq v3, v9, :cond_8b

    const/16 v10, 0x3e8

    if-ne v3, v10, :cond_39

    goto :goto_8b

    .line 273
    :cond_39
    new-instance v11, Ljava/lang/IllegalArgumentException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "state was "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " but must be one of: STATE_AVAILABLE_TO_DOWNLOAD("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, "), STATE_DOWNLOADING("

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "), STATE_ON_DEVICE("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "), STATE_NOT_AVAILABLE("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "), STATE_REMOVED_AND_AVAILABLE("

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ")"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v11, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 282
    :cond_8b
    :goto_8b
    iput-object v4, p0, Landroid/view/translation/TranslationCapability;->mSourceSpec:Landroid/view/translation/TranslationSpec;

    .line 283
    const-class v2, Landroid/annotation/NonNull;

    const/4 v7, 0x0

    invoke-static {v2, v7, v4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 285
    iput-object v5, p0, Landroid/view/translation/TranslationCapability;->mTargetSpec:Landroid/view/translation/TranslationSpec;

    .line 286
    const-class v2, Landroid/annotation/NonNull;

    invoke-static {v2, v7, v5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 288
    iput-boolean v1, p0, Landroid/view/translation/TranslationCapability;->mUiTranslationEnabled:Z

    .line 289
    iput v6, p0, Landroid/view/translation/TranslationCapability;->mSupportedTranslationFlags:I

    .line 290
    const-class v2, Landroid/view/translation/TranslationContext$TranslationFlag;

    invoke-static {v2, v7, v6}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Ljava/lang/annotation/Annotation;I)V

    .line 294
    return-void
.end method

.method private __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 316
    return-void
.end method

.method public static modelStateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # I

    .line 157
    sparse-switch p0, :sswitch_data_18

    .line 168
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 167
    :sswitch_8
    const-string v0, "STATE_REMOVED_AND_AVAILABLE"

    return-object v0

    .line 165
    :sswitch_b
    const-string v0, "STATE_NOT_AVAILABLE"

    return-object v0

    .line 163
    :sswitch_e
    const-string v0, "STATE_ON_DEVICE"

    return-object v0

    .line 161
    :sswitch_11
    const-string v0, "STATE_DOWNLOADING"

    return-object v0

    .line 159
    :sswitch_14
    const-string v0, "STATE_AVAILABLE_TO_DOWNLOAD"

    return-object v0

    nop

    :sswitch_data_18
    .sparse-switch
        0x1 -> :sswitch_14
        0x2 -> :sswitch_11
        0x3 -> :sswitch_e
        0x4 -> :sswitch_b
        0x3e8 -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 250
    const/4 v0, 0x0

    return v0
.end method

.method public getSourceSpec()Landroid/view/translation/TranslationSpec;
    .registers 2

    .line 186
    iget-object v0, p0, Landroid/view/translation/TranslationCapability;->mSourceSpec:Landroid/view/translation/TranslationSpec;

    return-object v0
.end method

.method public getState()I
    .registers 2

    .line 177
    iget v0, p0, Landroid/view/translation/TranslationCapability;->mState:I

    return v0
.end method

.method public getSupportedTranslationFlags()I
    .registers 2

    .line 215
    iget v0, p0, Landroid/view/translation/TranslationCapability;->mSupportedTranslationFlags:I

    return v0
.end method

.method public getTargetSpec()Landroid/view/translation/TranslationSpec;
    .registers 2

    .line 195
    iget-object v0, p0, Landroid/view/translation/TranslationCapability;->mTargetSpec:Landroid/view/translation/TranslationSpec;

    return-object v0
.end method

.method public isUiTranslationEnabled()Z
    .registers 2

    .line 205
    iget-boolean v0, p0, Landroid/view/translation/TranslationCapability;->mUiTranslationEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TranslationCapability { state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/translation/TranslationCapability;->mState:I

    .line 225
    invoke-static {v1}, Landroid/view/translation/TranslationCapability;->modelStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sourceSpec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/TranslationCapability;->mSourceSpec:Landroid/view/translation/TranslationSpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetSpec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/view/translation/TranslationCapability;->mTargetSpec:Landroid/view/translation/TranslationSpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uiTranslationEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/translation/TranslationCapability;->mUiTranslationEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", supportedTranslationFlags = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/view/translation/TranslationCapability;->mSupportedTranslationFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 239
    const/4 v0, 0x0

    .line 240
    .local v0, "flg":B
    iget-boolean v1, p0, Landroid/view/translation/TranslationCapability;->mUiTranslationEnabled:Z

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    .line 241
    :cond_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 242
    iget v1, p0, Landroid/view/translation/TranslationCapability;->mState:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    iget-object v1, p0, Landroid/view/translation/TranslationCapability;->mSourceSpec:Landroid/view/translation/TranslationSpec;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 244
    iget-object v1, p0, Landroid/view/translation/TranslationCapability;->mTargetSpec:Landroid/view/translation/TranslationSpec;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 245
    iget v1, p0, Landroid/view/translation/TranslationCapability;->mSupportedTranslationFlags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    return-void
.end method

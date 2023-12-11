.class public Landroid/telephony/SubscriptionInfo$Builder;
.super Ljava/lang/Object;
.source "SubscriptionInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SubscriptionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAreUiccApplicationsEnabled:Z

.field private mCardId:I

.field private mCardString:Ljava/lang/String;

.field private mCarrierConfigAccessRules:[Landroid/telephony/UiccAccessRule;

.field private mCarrierId:I

.field private mCarrierName:Ljava/lang/CharSequence;

.field private mCountryIso:Ljava/lang/String;

.field private mDataRoaming:I

.field private mDisplayName:Ljava/lang/CharSequence;

.field private mDisplayNameSource:I

.field private mEhplmns:[Ljava/lang/String;

.field private mGroupOwner:Ljava/lang/String;

.field private mGroupUuid:Landroid/os/ParcelUuid;

.field private mHplmns:[Ljava/lang/String;

.field private mIccId:Ljava/lang/String;

.field private mIconBitmap:Landroid/graphics/Bitmap;

.field private mIconTint:I

.field private mId:I

.field private mIsEmbedded:Z

.field private mIsGroupDisabled:Z

.field private mIsOpportunistic:Z

.field private mMcc:Ljava/lang/String;

.field private mMnc:Ljava/lang/String;

.field private mNativeAccessRules:[Landroid/telephony/UiccAccessRule;

.field private mNumber:Ljava/lang/String;

.field private mPortIndex:I

.field private mProfileClass:I

.field private mSimSlotIndex:I

.field private mType:I

.field private mUsageSetting:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAreUiccApplicationsEnabled(Landroid/telephony/SubscriptionInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mAreUiccApplicationsEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCardId(Landroid/telephony/SubscriptionInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCardId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCardString(Landroid/telephony/SubscriptionInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCardString:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCarrierConfigAccessRules(Landroid/telephony/SubscriptionInfo$Builder;)[Landroid/telephony/UiccAccessRule;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierConfigAccessRules:[Landroid/telephony/UiccAccessRule;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCarrierId(Landroid/telephony/SubscriptionInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCarrierName(Landroid/telephony/SubscriptionInfo$Builder;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCountryIso(Landroid/telephony/SubscriptionInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCountryIso:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDataRoaming(Landroid/telephony/SubscriptionInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDataRoaming:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayName(Landroid/telephony/SubscriptionInfo$Builder;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDisplayName:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayNameSource(Landroid/telephony/SubscriptionInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDisplayNameSource:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEhplmns(Landroid/telephony/SubscriptionInfo$Builder;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mEhplmns:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGroupOwner(Landroid/telephony/SubscriptionInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mGroupOwner:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGroupUuid(Landroid/telephony/SubscriptionInfo$Builder;)Landroid/os/ParcelUuid;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mGroupUuid:Landroid/os/ParcelUuid;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHplmns(Landroid/telephony/SubscriptionInfo$Builder;)[Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mHplmns:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIccId(Landroid/telephony/SubscriptionInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIccId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIconBitmap(Landroid/telephony/SubscriptionInfo$Builder;)Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIconBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIconTint(Landroid/telephony/SubscriptionInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIconTint:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmId(Landroid/telephony/SubscriptionInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsEmbedded(Landroid/telephony/SubscriptionInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsEmbedded:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsGroupDisabled(Landroid/telephony/SubscriptionInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsGroupDisabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsOpportunistic(Landroid/telephony/SubscriptionInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsOpportunistic:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMcc(Landroid/telephony/SubscriptionInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mMcc:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMnc(Landroid/telephony/SubscriptionInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mMnc:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNativeAccessRules(Landroid/telephony/SubscriptionInfo$Builder;)[Landroid/telephony/UiccAccessRule;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mNativeAccessRules:[Landroid/telephony/UiccAccessRule;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNumber(Landroid/telephony/SubscriptionInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mNumber:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPortIndex(Landroid/telephony/SubscriptionInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mPortIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmProfileClass(Landroid/telephony/SubscriptionInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mProfileClass:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSimSlotIndex(Landroid/telephony/SubscriptionInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mSimSlotIndex:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmType(Landroid/telephony/SubscriptionInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUsageSetting(Landroid/telephony/SubscriptionInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mUsageSetting:I

    return p0
.end method

.method public constructor <init>()V
    .registers 6

    .line 1252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1067
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mId:I

    .line 1072
    const-string v1, ""

    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIccId:Ljava/lang/String;

    .line 1080
    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mSimSlotIndex:I

    .line 1086
    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDisplayName:Ljava/lang/CharSequence;

    .line 1093
    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierName:Ljava/lang/CharSequence;

    .line 1099
    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDisplayNameSource:I

    .line 1105
    const/4 v2, 0x0

    iput v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIconTint:I

    .line 1110
    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mNumber:Ljava/lang/String;

    .line 1118
    iput v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDataRoaming:I

    .line 1123
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 1129
    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mMcc:Ljava/lang/String;

    .line 1135
    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mMnc:Ljava/lang/String;

    .line 1141
    new-array v4, v2, [Ljava/lang/String;

    iput-object v4, p0, Landroid/telephony/SubscriptionInfo$Builder;->mEhplmns:[Ljava/lang/String;

    .line 1147
    new-array v4, v2, [Ljava/lang/String;

    iput-object v4, p0, Landroid/telephony/SubscriptionInfo$Builder;->mHplmns:[Ljava/lang/String;

    .line 1153
    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCountryIso:Ljava/lang/String;

    .line 1159
    iput-boolean v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsEmbedded:Z

    .line 1165
    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mNativeAccessRules:[Landroid/telephony/UiccAccessRule;

    .line 1171
    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCardString:Ljava/lang/String;

    .line 1177
    const/4 v4, -0x2

    iput v4, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCardId:I

    .line 1182
    iput-boolean v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsOpportunistic:Z

    .line 1187
    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mGroupUuid:Landroid/os/ParcelUuid;

    .line 1196
    iput-boolean v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsGroupDisabled:Z

    .line 1203
    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierId:I

    .line 1211
    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mProfileClass:I

    .line 1217
    iput v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mType:I

    .line 1223
    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mGroupOwner:Ljava/lang/String;

    .line 1230
    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierConfigAccessRules:[Landroid/telephony/UiccAccessRule;

    .line 1236
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mAreUiccApplicationsEnabled:Z

    .line 1241
    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mPortIndex:I

    .line 1246
    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mUsageSetting:I

    .line 1253
    return-void
.end method

.method public constructor <init>(Landroid/telephony/SubscriptionInfo;)V
    .registers 7
    .param p1, "info"    # Landroid/telephony/SubscriptionInfo;

    .line 1260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1067
    const/4 v0, -0x1

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mId:I

    .line 1072
    const-string v1, ""

    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIccId:Ljava/lang/String;

    .line 1080
    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mSimSlotIndex:I

    .line 1086
    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDisplayName:Ljava/lang/CharSequence;

    .line 1093
    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierName:Ljava/lang/CharSequence;

    .line 1099
    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDisplayNameSource:I

    .line 1105
    const/4 v2, 0x0

    iput v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIconTint:I

    .line 1110
    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mNumber:Ljava/lang/String;

    .line 1118
    iput v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDataRoaming:I

    .line 1123
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 1129
    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mMcc:Ljava/lang/String;

    .line 1135
    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mMnc:Ljava/lang/String;

    .line 1141
    new-array v4, v2, [Ljava/lang/String;

    iput-object v4, p0, Landroid/telephony/SubscriptionInfo$Builder;->mEhplmns:[Ljava/lang/String;

    .line 1147
    new-array v4, v2, [Ljava/lang/String;

    iput-object v4, p0, Landroid/telephony/SubscriptionInfo$Builder;->mHplmns:[Ljava/lang/String;

    .line 1153
    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCountryIso:Ljava/lang/String;

    .line 1159
    iput-boolean v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsEmbedded:Z

    .line 1165
    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mNativeAccessRules:[Landroid/telephony/UiccAccessRule;

    .line 1171
    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCardString:Ljava/lang/String;

    .line 1177
    const/4 v4, -0x2

    iput v4, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCardId:I

    .line 1182
    iput-boolean v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsOpportunistic:Z

    .line 1187
    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mGroupUuid:Landroid/os/ParcelUuid;

    .line 1196
    iput-boolean v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsGroupDisabled:Z

    .line 1203
    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierId:I

    .line 1211
    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mProfileClass:I

    .line 1217
    iput v2, p0, Landroid/telephony/SubscriptionInfo$Builder;->mType:I

    .line 1223
    iput-object v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mGroupOwner:Ljava/lang/String;

    .line 1230
    iput-object v3, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierConfigAccessRules:[Landroid/telephony/UiccAccessRule;

    .line 1236
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mAreUiccApplicationsEnabled:Z

    .line 1241
    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mPortIndex:I

    .line 1246
    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mUsageSetting:I

    .line 1261
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmId(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mId:I

    .line 1262
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmIccId(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIccId:Ljava/lang/String;

    .line 1263
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmSimSlotIndex(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mSimSlotIndex:I

    .line 1264
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmDisplayName(Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDisplayName:Ljava/lang/CharSequence;

    .line 1265
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmCarrierName(Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierName:Ljava/lang/CharSequence;

    .line 1266
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmDisplayNameSource(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDisplayNameSource:I

    .line 1267
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmIconTint(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIconTint:I

    .line 1268
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mNumber:Ljava/lang/String;

    .line 1269
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmDataRoaming(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDataRoaming:I

    .line 1270
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmIconBitmap(Landroid/telephony/SubscriptionInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 1271
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmMcc(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mMcc:Ljava/lang/String;

    .line 1272
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmMnc(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mMnc:Ljava/lang/String;

    .line 1273
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmEhplmns(Landroid/telephony/SubscriptionInfo;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mEhplmns:[Ljava/lang/String;

    .line 1274
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmHplmns(Landroid/telephony/SubscriptionInfo;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mHplmns:[Ljava/lang/String;

    .line 1275
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmCountryIso(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCountryIso:Ljava/lang/String;

    .line 1276
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmIsEmbedded(Landroid/telephony/SubscriptionInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsEmbedded:Z

    .line 1277
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmNativeAccessRules(Landroid/telephony/SubscriptionInfo;)[Landroid/telephony/UiccAccessRule;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mNativeAccessRules:[Landroid/telephony/UiccAccessRule;

    .line 1278
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmCardString(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCardString:Ljava/lang/String;

    .line 1279
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmCardId(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCardId:I

    .line 1280
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmIsOpportunistic(Landroid/telephony/SubscriptionInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsOpportunistic:Z

    .line 1281
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmGroupUuid(Landroid/telephony/SubscriptionInfo;)Landroid/os/ParcelUuid;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mGroupUuid:Landroid/os/ParcelUuid;

    .line 1282
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmIsGroupDisabled(Landroid/telephony/SubscriptionInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsGroupDisabled:Z

    .line 1283
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmCarrierId(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierId:I

    .line 1284
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmProfileClass(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mProfileClass:I

    .line 1285
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmType(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mType:I

    .line 1286
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmGroupOwner(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mGroupOwner:Ljava/lang/String;

    .line 1287
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmCarrierConfigAccessRules(Landroid/telephony/SubscriptionInfo;)[Landroid/telephony/UiccAccessRule;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierConfigAccessRules:[Landroid/telephony/UiccAccessRule;

    .line 1288
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmAreUiccApplicationsEnabled(Landroid/telephony/SubscriptionInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mAreUiccApplicationsEnabled:Z

    .line 1289
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmPortIndex(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mPortIndex:I

    .line 1290
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->-$$Nest$fgetmUsageSetting(Landroid/telephony/SubscriptionInfo;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mUsageSetting:I

    .line 1291
    return-void
.end method


# virtual methods
.method public build()Landroid/telephony/SubscriptionInfo;
    .registers 3

    .line 1681
    new-instance v0, Landroid/telephony/SubscriptionInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/SubscriptionInfo;-><init>(Landroid/telephony/SubscriptionInfo$Builder;Landroid/telephony/SubscriptionInfo-IA;)V

    return-object v0
.end method

.method public setCardId(I)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2
    .param p1, "cardId"    # I

    .line 1527
    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCardId:I

    .line 1528
    return-object p0
.end method

.method public setCardString(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 3
    .param p1, "cardString"    # Ljava/lang/String;

    .line 1515
    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCardString:Ljava/lang/String;

    .line 1516
    return-object p0
.end method

.method public setCarrierConfigAccessRules([Landroid/telephony/UiccAccessRule;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2
    .param p1, "carrierConfigAccessRules"    # [Landroid/telephony/UiccAccessRule;

    .line 1634
    iput-object p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierConfigAccessRules:[Landroid/telephony/UiccAccessRule;

    .line 1635
    return-object p0
.end method

.method public setCarrierId(I)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2
    .param p1, "carrierId"    # I

    .line 1582
    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierId:I

    .line 1583
    return-object p0
.end method

.method public setCarrierName(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 3
    .param p1, "carrierName"    # Ljava/lang/CharSequence;

    .line 1352
    if-nez p1, :cond_5

    const-string v0, ""

    goto :goto_6

    :cond_5
    move-object v0, p1

    :goto_6
    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCarrierName:Ljava/lang/CharSequence;

    .line 1353
    return-object p0
.end method

.method public setCountryIso(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 3
    .param p1, "countryIso"    # Ljava/lang/String;

    .line 1476
    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mCountryIso:Ljava/lang/String;

    .line 1477
    return-object p0
.end method

.method public setDataRoaming(I)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2
    .param p1, "dataRoaming"    # I

    .line 1404
    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDataRoaming:I

    .line 1405
    return-object p0
.end method

.method public setDisplayName(Ljava/lang/CharSequence;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 3
    .param p1, "displayName"    # Ljava/lang/CharSequence;

    .line 1339
    if-nez p1, :cond_5

    const-string v0, ""

    goto :goto_6

    :cond_5
    move-object v0, p1

    :goto_6
    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDisplayName:Ljava/lang/CharSequence;

    .line 1340
    return-object p0
.end method

.method public setDisplayNameSource(I)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2
    .param p1, "displayNameSource"    # I

    .line 1366
    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mDisplayNameSource:I

    .line 1367
    return-object p0
.end method

.method public setEhplmns([Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 3
    .param p1, "ehplmns"    # [Ljava/lang/String;

    .line 1452
    if-nez p1, :cond_6

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_7

    :cond_6
    move-object v0, p1

    :goto_7
    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mEhplmns:[Ljava/lang/String;

    .line 1453
    return-object p0
.end method

.method public setEmbedded(Z)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2
    .param p1, "isEmbedded"    # Z

    .line 1488
    iput-boolean p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsEmbedded:Z

    .line 1489
    return-object p0
.end method

.method public setGroupDisabled(Z)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2
    .param p1, "isGroupDisabled"    # Z

    .line 1568
    iput-boolean p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsGroupDisabled:Z

    .line 1569
    return-object p0
.end method

.method public setGroupOwner(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 3
    .param p1, "groupOwner"    # Ljava/lang/String;

    .line 1620
    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mGroupOwner:Ljava/lang/String;

    .line 1621
    return-object p0
.end method

.method public setGroupUuid(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 3
    .param p1, "groupUuid"    # Ljava/lang/String;

    .line 1553
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_c

    :cond_8
    invoke-static {p1}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v0

    :goto_c
    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mGroupUuid:Landroid/os/ParcelUuid;

    .line 1554
    return-object p0
.end method

.method public setHplmns([Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 3
    .param p1, "hplmns"    # [Ljava/lang/String;

    .line 1464
    if-nez p1, :cond_6

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_7

    :cond_6
    move-object v0, p1

    :goto_7
    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mHplmns:[Ljava/lang/String;

    .line 1465
    return-object p0
.end method

.method public setIccId(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 3
    .param p1, "iccId"    # Ljava/lang/String;

    .line 1313
    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIccId:Ljava/lang/String;

    .line 1314
    return-object p0
.end method

.method public setIcon(Landroid/graphics/Bitmap;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2
    .param p1, "iconBitmap"    # Landroid/graphics/Bitmap;

    .line 1416
    iput-object p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 1417
    return-object p0
.end method

.method public setIconTint(I)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2
    .param p1, "iconTint"    # I

    .line 1378
    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIconTint:I

    .line 1379
    return-object p0
.end method

.method public setId(I)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2
    .param p1, "id"    # I

    .line 1301
    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mId:I

    .line 1302
    return-object p0
.end method

.method public setMcc(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2
    .param p1, "mcc"    # Ljava/lang/String;

    .line 1428
    iput-object p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mMcc:Ljava/lang/String;

    .line 1429
    return-object p0
.end method

.method public setMnc(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2
    .param p1, "mnc"    # Ljava/lang/String;

    .line 1440
    iput-object p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mMnc:Ljava/lang/String;

    .line 1441
    return-object p0
.end method

.method public setNativeAccessRules([Landroid/telephony/UiccAccessRule;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2
    .param p1, "nativeAccessRules"    # [Landroid/telephony/UiccAccessRule;

    .line 1501
    iput-object p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mNativeAccessRules:[Landroid/telephony/UiccAccessRule;

    .line 1502
    return-object p0
.end method

.method public setNumber(Ljava/lang/String;)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 3
    .param p1, "number"    # Ljava/lang/String;

    .line 1390
    invoke-static {p1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionInfo$Builder;->mNumber:Ljava/lang/String;

    .line 1391
    return-object p0
.end method

.method public setOpportunistic(Z)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2
    .param p1, "isOpportunistic"    # Z

    .line 1539
    iput-boolean p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mIsOpportunistic:Z

    .line 1540
    return-object p0
.end method

.method public setPortIndex(I)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2
    .param p1, "portIndex"    # I

    .line 1659
    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mPortIndex:I

    .line 1660
    return-object p0
.end method

.method public setProfileClass(I)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2
    .param p1, "profileClass"    # I

    .line 1596
    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mProfileClass:I

    .line 1597
    return-object p0
.end method

.method public setSimSlotIndex(I)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2
    .param p1, "simSlotIndex"    # I

    .line 1326
    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mSimSlotIndex:I

    .line 1327
    return-object p0
.end method

.method public setType(I)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2
    .param p1, "type"    # I

    .line 1608
    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mType:I

    .line 1609
    return-object p0
.end method

.method public setUiccApplicationsEnabled(Z)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2
    .param p1, "uiccApplicationsEnabled"    # Z

    .line 1647
    iput-boolean p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mAreUiccApplicationsEnabled:Z

    .line 1648
    return-object p0
.end method

.method public setUsageSetting(I)Landroid/telephony/SubscriptionInfo$Builder;
    .registers 2
    .param p1, "usageSetting"    # I

    .line 1671
    iput p1, p0, Landroid/telephony/SubscriptionInfo$Builder;->mUsageSetting:I

    .line 1672
    return-object p0
.end method

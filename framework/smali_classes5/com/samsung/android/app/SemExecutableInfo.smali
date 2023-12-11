.class public final Lcom/samsung/android/app/SemExecutableInfo;
.super Ljava/lang/Object;
.source "SemExecutableInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final CLASSNAME_PREFIX_FOR_SEC_PRODUCT_FEATURE:Ljava/lang/String; = "SecProductFeature_"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/app/SemExecutableInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final CSC_FEATURE_PREFIX:Ljava/lang/String; = "CscFeature_"

.field private static final DEBUG:Z

.field public static final LAUNCH_TYPE_ACTIVITY:I = 0x0

.field public static final LAUNCH_TYPE_ACTIVITY_FOR_RESULT:I = 0x3

.field public static final LAUNCH_TYPE_BROADCAST:I = 0x2

.field public static final LAUNCH_TYPE_SERVICE:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "SemExecutableInfo"

.field private static final MD_LABEL_EXECUTABLE:Ljava/lang/String; = "com.samsung.android.support.executable"

.field private static final ORDER_INIT_VALUE:I = -0x270c

.field private static final ORDER_INVALID_FORMAT:I = -0x270e

.field private static final ORDER_NOT_ALLOWED:I = -0x270d

.field private static final ORDER_OUT_OF_RANGE:I = -0x270f

.field private static final PACKAGE_PREFIX_FOR_SEC_PRODUCT_FEATURE:Ljava/lang/String; = "com.sec.android.app."

.field private static final SEC_FLOATING_FEATURE_PREFIX:Ljava/lang/String; = "SEC_FLOATING_FEATURE_"

.field private static final SEC_PRODUCT_FEATURE_PREFIX:Ljava/lang/String; = "SEC_PRODUCT_FEATURE_"

.field private static final XML_ELEMENT_COMMAND:Ljava/lang/String; = "command"

.field private static final XML_ELEMENT_ENABLED:Ljava/lang/String; = "enabled"

.field private static final XML_ELEMENT_EXECUTABLE:Ljava/lang/String; = "executable"

.field private static final XML_ELEMENT_EXTRA_ATTR:Ljava/lang/String; = "extras-attr"

.field private static final XML_ELEMENT_EXTRA_ATTR_CATEGORY:Ljava/lang/String; = "category"

.field private static final XML_ELEMENT_EXTRA_ATTR_COMPONENTNAME:Ljava/lang/String; = "componentName"

.field private static final XML_ELEMENT_EXTRA_ATTR_EXTRAS:Ljava/lang/String; = "extras"

.field private static final XML_ELEMENT_EXTRA_ATTR_FEATURE:Ljava/lang/String; = "feature"

.field private static final XML_ELEMENT_EXTRA_ATTR_INTETNACTION:Ljava/lang/String; = "action"

.field private static final XML_ELEMENT_EXTRA_ATTR_LAUCHMODE:Ljava/lang/String; = "launchMode"

.field private static final XML_ELEMENT_EXTRA_ATTR_PACKAGENAME:Ljava/lang/String; = "packageName"

.field private static final XML_ELEMENT_EXTRA_ATTR_TYPE:Ljava/lang/String; = "type"

.field private static final XML_ELEMENT_EXTRA_ATTR_TYPE_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final XML_ELEMENT_EXTRA_ATTR_TYPE_ACTIVITY_FOR_RESULT:Ljava/lang/String; = "activityForResult"

.field private static final XML_ELEMENT_EXTRA_ATTR_TYPE_BROADCAST:Ljava/lang/String; = "broadcast"

.field private static final XML_ELEMENT_EXTRA_ATTR_TYPE_SERVICE:Ljava/lang/String; = "service"

.field private static final XML_ELEMENT_ICON:Ljava/lang/String; = "icon"

.field private static final XML_ELEMENT_LABEL:Ljava/lang/String; = "label"

.field private static final XML_ELEMENT_LAUCHMODE_CLEARTOP:Ljava/lang/String; = "clearTop"

.field private static final XML_ELEMENT_LAUCHMODE_NEWTASK:Ljava/lang/String; = "newTask"

.field private static final XML_ELEMENT_LAUCHMODE_SINGLETOP:Ljava/lang/String; = "singleTop"

.field private static final XML_ELEMENT_SMALL_ICON:Ljava/lang/String; = "smallIcon"


# instance fields
.field mAction:Ljava/lang/String;

.field mActivityLaunchMode:Ljava/lang/String;

.field mBundle:Landroid/os/Bundle;

.field mCategory:Ljava/lang/String;

.field mComponentName:Ljava/lang/String;

.field mEnabled:Z

.field mFeatureNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mFeatureValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mIconId:I

.field mLabelId:I

.field mLaunchType:I

.field mPackageName:Ljava/lang/String;

.field mSmallIconId:I

.field mUid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 66
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    .line 145
    new-instance v0, Lcom/samsung/android/app/SemExecutableInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/app/SemExecutableInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/SemExecutableInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mEnabled:Z

    .line 136
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    .line 161
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 164
    invoke-direct {p0}, Lcom/samsung/android/app/SemExecutableInfo;-><init>()V

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput-boolean v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mEnabled:Z

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLabelId:I

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mIconId:I

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mSmallIconId:I

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mAction:Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mPackageName:Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 177
    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mComponentName:Ljava/lang/String;

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    .line 183
    return-void
.end method

.method private addExtraAttribute(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11
    .param p1, "activityContext"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .line 341
    sget-object v0, Lcom/android/internal/R$styleable;->extrasCommand:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 342
    .local v0, "ta":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 344
    .local v4, "key":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 346
    .local v6, "value":Ljava/lang/String;
    const-string/jumbo v7, "launchMode"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 347
    iput-object v6, p0, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    goto/16 :goto_b8

    .line 348
    :cond_22
    const-string/jumbo v7, "type"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 349
    const-string v7, "activity"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_37

    .line 350
    iput v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    goto/16 :goto_b8

    .line 351
    :cond_37
    const-string/jumbo v7, "service"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_44

    .line 352
    iput v5, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    goto/16 :goto_b8

    .line 353
    :cond_44
    const-string v5, "broadcast"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 354
    iput v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    goto/16 :goto_b8

    .line 355
    :cond_50
    const-string v3, "activityForResult"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 356
    const/4 v1, 0x3

    iput v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    goto :goto_b8

    .line 358
    :cond_5c
    iput v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    goto :goto_b8

    .line 360
    :cond_5f
    const-string v1, "category"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 361
    iput-object v6, p0, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    goto :goto_b8

    .line 362
    :cond_6a
    const-string v1, "action"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    .line 363
    iput-object v6, p0, Lcom/samsung/android/app/SemExecutableInfo;->mAction:Ljava/lang/String;

    goto :goto_b8

    .line 364
    :cond_75
    const-string/jumbo v1, "packageName"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 365
    iput-object v6, p0, Lcom/samsung/android/app/SemExecutableInfo;->mPackageName:Ljava/lang/String;

    goto :goto_b8

    .line 366
    :cond_81
    const-string v1, "componentName"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8c

    .line 367
    iput-object v6, p0, Lcom/samsung/android/app/SemExecutableInfo;->mComponentName:Ljava/lang/String;

    goto :goto_b8

    .line 368
    :cond_8c
    const-string v1, "feature"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 369
    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b8

    .line 371
    :cond_9f
    const-string v1, "extras"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 372
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b8

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b8

    .line 373
    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_b8
    :goto_b8
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 377
    return-void
.end method

.method private static checkValidate(Lcom/samsung/android/app/SemExecutableInfo;)Z
    .registers 11
    .param p0, "info"    # Lcom/samsung/android/app/SemExecutableInfo;

    .line 614
    const-string v0, "SemExecutableInfo"

    const/4 v1, 0x0

    if-nez p0, :cond_f

    .line 615
    sget-boolean v2, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v2, :cond_e

    .line 616
    const-string v2, "Invalid SemExecutableInfo"

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_e
    return v1

    .line 622
    :cond_f
    iget-boolean v2, p0, Lcom/samsung/android/app/SemExecutableInfo;->mEnabled:Z

    if-nez v2, :cond_32

    .line 623
    sget-boolean v2, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v2, :cond_31

    .line 624
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disabled SemExecutableInfo "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_31
    return v1

    .line 627
    :cond_32
    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getLaunchType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_64

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_45

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getComponentName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_64

    .line 628
    :cond_45
    sget-boolean v2, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v2, :cond_63

    .line 629
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid packageName or componentName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_63
    return v1

    .line 632
    :cond_64
    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getLabelId()I

    move-result v2

    if-eqz v2, :cond_20e

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getIconId()I

    move-result v2

    if-nez v2, :cond_72

    goto/16 :goto_20e

    .line 642
    :cond_72
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_73
    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_20d

    .line 643
    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 644
    .local v3, "featureName":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 646
    .local v5, "featureValue":Ljava/lang/String;
    if-eqz v3, :cond_195

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_195

    if-eqz v5, :cond_195

    .line 647
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_195

    .line 649
    const-string v6, "CscFeature_"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "] "

    const-string v8, " is not ["

    const-string v9, "!"

    if-eqz v6, :cond_f6

    .line 651
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 653
    .local v6, "str":Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c4

    .line 654
    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 655
    .local v7, "value":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-ne v8, v4, :cond_c3

    .line 656
    return v1

    .line 655
    .end local v7    # "value":Ljava/lang/String;
    :cond_c3
    goto :goto_f3

    .line 658
    :cond_c4
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f3

    .line 659
    sget-boolean v4, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v4, :cond_f2

    .line 660
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_f2
    return v1

    .line 658
    :cond_f3
    :goto_f3
    nop

    .line 664
    .end local v6    # "str":Ljava/lang/String;
    goto/16 :goto_209

    :cond_f6
    const-string v6, "SEC_FLOATING_FEATURE_"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_144

    .line 666
    const-string v6, ""

    .line 668
    .restart local v6    # "str":Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_112

    .line 669
    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 670
    .restart local v7    # "value":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-ne v8, v4, :cond_111

    .line 671
    return v1

    .line 670
    .end local v7    # "value":Ljava/lang/String;
    :cond_111
    goto :goto_141

    .line 673
    :cond_112
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_141

    .line 674
    sget-boolean v4, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v4, :cond_140

    .line 675
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_140
    return v1

    .line 673
    :cond_141
    :goto_141
    nop

    .line 679
    .end local v6    # "str":Ljava/lang/String;
    goto/16 :goto_209

    :cond_144
    const-string v6, "SEC_PRODUCT_FEATURE_"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14d

    .line 681
    return v1

    .line 727
    :cond_14d
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 729
    .restart local v6    # "str":Ljava/lang/String;
    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_163

    .line 730
    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 731
    .restart local v7    # "value":Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-ne v8, v4, :cond_162

    .line 732
    return v1

    .line 731
    .end local v7    # "value":Ljava/lang/String;
    :cond_162
    goto :goto_192

    .line 734
    :cond_163
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_192

    .line 735
    sget-boolean v4, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v4, :cond_191

    .line 736
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :cond_191
    return v1

    .line 734
    :cond_192
    :goto_192
    nop

    .line 740
    .end local v6    # "str":Ljava/lang/String;
    goto/16 :goto_209

    .line 741
    :cond_195
    const-string v4, " "

    if-eqz v3, :cond_1d0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1d0

    if-eqz v5, :cond_1a9

    if-eqz v5, :cond_1d0

    .line 742
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_1d0

    .line 744
    :cond_1a9
    sget-boolean v6, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v6, :cond_1cf

    .line 745
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No value for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    :cond_1cf
    return v1

    .line 748
    :cond_1d0
    if-eqz v5, :cond_209

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_209

    if-eqz v3, :cond_1e2

    if-eqz v3, :cond_209

    .line 749
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-gtz v6, :cond_209

    .line 751
    :cond_1e2
    sget-boolean v6, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v6, :cond_208

    .line 752
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No feature name is provided for the value "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_208
    return v1

    .line 642
    .end local v3    # "featureName":Ljava/lang/String;
    .end local v5    # "featureValue":Ljava/lang/String;
    :cond_209
    :goto_209
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_73

    .line 757
    .end local v2    # "i":I
    :cond_20d
    return v4

    .line 633
    :cond_20e
    :goto_20e
    sget-boolean v2, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v2, :cond_22c

    .line 634
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid label or icon = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_22c
    return v1
.end method

.method private static createActivityContext(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Context;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 453
    const-string v0, "SemExecutableInfo"

    const/4 v1, 0x0

    .line 455
    .local v1, "theirContext":Landroid/content/Context;
    :try_start_3
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_c} :catch_2a
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_c} :catch_e

    move-object v1, v0

    .line 460
    :goto_d
    goto :goto_46

    .line 458
    :catch_e
    move-exception v2

    .line 459
    .local v2, "e":Ljava/lang/SecurityException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t make context for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_46

    .line 456
    .end local v2    # "e":Ljava/lang/SecurityException;
    :catch_2a
    move-exception v2

    .line 457
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package not found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/util/SemLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_d

    .line 462
    :goto_46
    return-object v1
.end method

.method private static examineOrderInCategory(Lcom/samsung/android/app/SemExecutableInfo;Z)V
    .registers 19
    .param p0, "info"    # Lcom/samsung/android/app/SemExecutableInfo;
    .param p1, "isSamsungApps"    # Z

    .line 387
    move-object/from16 v1, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    .line 388
    .local v2, "sb":Ljava/lang/StringBuilder;
    const-string v3, ""

    .line 389
    .local v3, "resultStr":Ljava/lang/String;
    const/16 v0, -0x270c

    .line 391
    .local v0, "order":I
    if-nez p1, :cond_10

    .line 392
    const/16 v0, -0x270d

    .line 394
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/SemExecutableInfo;->getCategories()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_d2

    .line 395
    iget-object v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    const-string v5, "\\|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 397
    .local v4, "categories":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x0

    move v7, v0

    move v8, v6

    .end local v0    # "order":I
    .local v7, "order":I
    :goto_26
    if-ge v8, v5, :cond_c0

    aget-object v10, v4, v8

    .line 399
    .local v10, "str":Ljava/lang/String;
    const-string v0, "@"

    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 400
    .local v11, "strSplit":[Ljava/lang/String;
    array-length v12, v11

    .line 401
    .local v12, "size":I
    const-string v13, "SemExecutableInfo"

    const-string/jumbo v14, "|"

    packed-switch v12, :pswitch_data_d4

    .line 436
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    sget-boolean v0, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v0, :cond_bb

    .line 439
    const-string v0, "Invalid category format for category order"

    invoke-static {v13, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bb

    .line 404
    :pswitch_4a
    const/16 v9, -0x270f

    const/16 v15, -0x270d

    if-eq v7, v15, :cond_a7

    .line 405
    :try_start_50
    aget-object v0, v11, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_56
    .catch Ljava/lang/NumberFormatException; {:try_start_50 .. :try_end_56} :catch_64
    .catchall {:try_start_50 .. :try_end_56} :catchall_62

    move v7, v0

    .line 407
    const/16 v0, -0x3e8

    if-lt v7, v0, :cond_5f

    const/16 v0, 0x3e8

    if-le v7, v0, :cond_a7

    .line 408
    :cond_5f
    const/16 v7, -0x270f

    goto :goto_a7

    .line 418
    :catchall_62
    move-exception v0

    goto :goto_8d

    .line 411
    :catch_64
    move-exception v0

    .line 412
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const/16 v7, -0x270e

    .line 413
    :try_start_67
    sget-boolean v16, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v16, :cond_73

    .line 414
    const-string v6, "Invalid order"

    invoke-static {v13, v6}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_73
    .catchall {:try_start_67 .. :try_end_73} :catchall_62

    .line 418
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    :cond_73
    if-eq v7, v9, :cond_83

    if-eq v7, v15, :cond_83

    const/16 v6, -0x270e

    if-ne v7, v6, :cond_7c

    goto :goto_83

    .line 422
    :cond_7c
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    goto :goto_b3

    .line 419
    :cond_83
    :goto_83
    const/4 v6, 0x1

    aget-object v0, v11, v6

    :goto_86
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b3

    .line 418
    :goto_8d
    if-eq v7, v9, :cond_9d

    if-eq v7, v15, :cond_9d

    const/16 v5, -0x270e

    if-ne v7, v5, :cond_96

    goto :goto_9d

    .line 422
    :cond_96
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a6

    .line 419
    :cond_9d
    :goto_9d
    const/4 v5, 0x1

    aget-object v5, v11, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    :goto_a6
    throw v0

    .line 418
    :cond_a7
    :goto_a7
    if-eq v7, v9, :cond_af

    if-eq v7, v15, :cond_af

    const/16 v6, -0x270e

    if-ne v7, v6, :cond_7c

    .line 419
    :cond_af
    const/4 v6, 0x1

    aget-object v0, v11, v6

    goto :goto_86

    .line 426
    :goto_b3
    goto :goto_bb

    .line 429
    :pswitch_b4
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    nop

    .line 397
    .end local v10    # "str":Ljava/lang/String;
    .end local v11    # "strSplit":[Ljava/lang/String;
    .end local v12    # "size":I
    :cond_bb
    :goto_bb
    add-int/lit8 v8, v8, 0x1

    const/4 v6, 0x0

    goto/16 :goto_26

    .line 443
    :cond_c0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 445
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v5, 0x1

    sub-int/2addr v0, v5

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    move v0, v7

    .line 447
    .end local v4    # "categories":[Ljava/lang/String;
    .end local v7    # "order":I
    .local v0, "order":I
    :cond_d2
    return-void

    nop

    :pswitch_data_d4
    .packed-switch 0x1
        :pswitch_b4
        :pswitch_4a
    .end packed-switch
.end method

.method private static getActivityMetaData(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/ComponentName;)Lcom/samsung/android/app/SemExecutableInfo;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attr"    # Landroid/util/AttributeSet;
    .param p2, "cName"    # Landroid/content/ComponentName;

    .line 327
    new-instance v0, Lcom/samsung/android/app/SemExecutableInfo;

    invoke-direct {v0}, Lcom/samsung/android/app/SemExecutableInfo;-><init>()V

    .line 328
    .local v0, "result":Lcom/samsung/android/app/SemExecutableInfo;
    invoke-static {p0, p2}, Lcom/samsung/android/app/SemExecutableInfo;->createActivityContext(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Context;

    move-result-object v1

    .line 329
    .local v1, "activityContext":Landroid/content/Context;
    if-nez v1, :cond_d

    const/4 v2, 0x0

    return-object v2

    .line 330
    :cond_d
    sget-object v2, Lcom/android/internal/R$styleable;->command:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 331
    .local v2, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    .line 332
    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v0, Lcom/samsung/android/app/SemExecutableInfo;->mEnabled:Z

    .line 333
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, v0, Lcom/samsung/android/app/SemExecutableInfo;->mLabelId:I

    .line 334
    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, v0, Lcom/samsung/android/app/SemExecutableInfo;->mIconId:I

    .line 335
    const/4 v4, 0x4

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v0, Lcom/samsung/android/app/SemExecutableInfo;->mSmallIconId:I

    .line 336
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 337
    return-object v0
.end method

.method private getBundleString()Ljava/lang/String;
    .registers 7

    .line 761
    const-string v0, ""

    .line 763
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 764
    return-object v0

    .line 766
    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 767
    .local v1, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 769
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 770
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 771
    .local v4, "key":Ljava/lang/String;
    const-string/jumbo v5, "{"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    const-string v5, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    iget-object v5, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 775
    const-string/jumbo v5, "}"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 776
    .end local v4    # "key":Ljava/lang/String;
    goto :goto_22

    .line 778
    :cond_4c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 779
    return-object v0
.end method

.method public static scanExecutableInfos(Landroid/content/Context;)Ljava/util/List;
    .registers 39
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/SemExecutableInfo;",
            ">;"
        }
    .end annotation

    .line 471
    move-object/from16 v1, p0

    const-string v2, "Reading SemExecutableInfo metadata for "

    sget-boolean v0, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    const-string v3, "SemExecutableInfo"

    if-eqz v0, :cond_10

    .line 472
    const-string/jumbo v0, "scan scanExecutableInfos start"

    invoke-static {v3, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_10
    const-string v4, "com.samsung.android.support.executable"

    .line 474
    .local v4, "ACTION_EXECUTABLE":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 476
    .local v5, "pm":Landroid/content/pm/PackageManager;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v0

    .line 477
    .local v6, "newSemExecutableInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/SemExecutableInfo;>;"
    const/4 v0, 0x0

    .line 479
    .local v0, "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    const/16 v7, 0x280

    .line 482
    .local v7, "queryFlag":I
    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.samsung.android.support.executable"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v10, 0x280

    invoke-virtual {v5, v8, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    .line 483
    .local v8, "activityExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v11, v10}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v11

    .line 484
    .local v11, "serviceExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12, v10}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 486
    .local v10, "receiverExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    filled-new-array {v8, v11, v10}, [Ljava/util/List;

    move-result-object v12

    .line 492
    .local v12, "executableListArray":[Ljava/util/List;
    array-length v13, v12

    const/4 v14, 0x0

    :goto_44
    if-ge v14, v13, :cond_470

    aget-object v15, v12, v14

    .line 493
    .local v15, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-boolean v16, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v16, :cond_6c

    .line 494
    move-object/from16 v16, v0

    .end local v0    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .local v16, "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v4

    .end local v4    # "ACTION_EXECUTABLE":Ljava/lang/String;
    .local v17, "ACTION_EXECUTABLE":Ljava/lang/String;
    const-string/jumbo v4, "list size = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_70

    .line 493
    .end local v16    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .end local v17    # "ACTION_EXECUTABLE":Ljava/lang/String;
    .restart local v0    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v4    # "ACTION_EXECUTABLE":Ljava/lang/String;
    :cond_6c
    move-object/from16 v16, v0

    move-object/from16 v17, v4

    .line 495
    .end local v0    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .end local v4    # "ACTION_EXECUTABLE":Ljava/lang/String;
    .restart local v16    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v17    # "ACTION_EXECUTABLE":Ljava/lang/String;
    :goto_70
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_74
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_456

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v4

    move-object v4, v0

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 496
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    const/4 v0, 0x0

    .line 497
    .local v0, "itemInfo":Landroid/content/pm/PackageItemInfo;
    const/16 v19, 0x0

    .line 498
    .local v19, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/16 v20, 0x0

    .line 500
    .local v20, "cName":Landroid/content/ComponentName;
    const/16 v21, 0x1

    .line 501
    .local v21, "isDisabled":Z
    const/16 v22, 0x1

    .line 503
    .local v22, "isComponentDisabled":Z
    move-object/from16 v23, v0

    .end local v0    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .local v23, "itemInfo":Landroid/content/pm/PackageItemInfo;
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v5

    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .local v24, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_c2

    .line 504
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 505
    .end local v23    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .restart local v0    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 506
    .end local v19    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v23, v0

    .end local v0    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .restart local v23    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const/16 v19, 0x1

    xor-int/lit8 v0, v0, 0x1

    move/from16 v21, v0

    .line 507
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->enabled:Z

    xor-int/lit8 v0, v0, 0x1

    move/from16 v22, v0

    move-object/from16 v19, v4

    move-object v4, v5

    move-object/from16 v5, v23

    move/from16 v35, v21

    move/from16 v21, v7

    move/from16 v7, v35

    move/from16 v36, v22

    move-object/from16 v22, v8

    move/from16 v8, v36

    goto :goto_108

    .line 508
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v19    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_c2
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_f4

    .line 509
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 510
    .end local v23    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .restart local v0    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 511
    .end local v19    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v23, v0

    .end local v0    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .restart local v23    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const/16 v19, 0x1

    xor-int/lit8 v0, v0, 0x1

    move/from16 v21, v0

    .line 512
    iget-object v0, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-boolean v0, v0, Landroid/content/pm/ServiceInfo;->enabled:Z

    xor-int/lit8 v0, v0, 0x1

    move/from16 v22, v0

    move-object/from16 v19, v4

    move-object v4, v5

    move-object/from16 v5, v23

    move/from16 v35, v21

    move/from16 v21, v7

    move/from16 v7, v35

    move/from16 v36, v22

    move-object/from16 v22, v8

    move/from16 v8, v36

    goto :goto_108

    .line 508
    .end local v5    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v19    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_f4
    move-object/from16 v5, v23

    move-object/from16 v35, v19

    move-object/from16 v19, v4

    move-object/from16 v4, v35

    move/from16 v36, v21

    move/from16 v21, v7

    move/from16 v7, v36

    move/from16 v37, v22

    move-object/from16 v22, v8

    move/from16 v8, v37

    .line 515
    .end local v23    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v5, "itemInfo":Landroid/content/pm/PackageItemInfo;
    .local v7, "isDisabled":Z
    .local v8, "isComponentDisabled":Z
    .local v19, "info":Landroid/content/pm/ResolveInfo;
    .local v21, "queryFlag":I
    .local v22, "activityExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_108
    if-nez v7, :cond_40d

    if-eqz v8, :cond_11c

    move-object/from16 v33, v4

    move-object/from16 v27, v5

    move-object/from16 v28, v9

    move-object/from16 v23, v10

    move-object/from16 v26, v11

    move-object/from16 v31, v12

    move/from16 v29, v13

    goto/16 :goto_41b

    .line 521
    :cond_11c
    new-instance v0, Landroid/content/ComponentName;

    move-object/from16 v23, v10

    .end local v10    # "receiverExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v23, "receiverExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v10, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v26, v11

    .end local v11    # "serviceExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v26, "serviceExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v11, v5, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v10, v0

    .line 524
    .end local v20    # "cName":Landroid/content/ComponentName;
    .local v10, "cName":Landroid/content/ComponentName;
    :try_start_12a
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v4, v0, v9}, Landroid/content/pm/ApplicationInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 525
    .local v0, "xml":Landroid/content/res/XmlResourceParser;
    if-nez v0, :cond_13c

    .line 526
    move-object/from16 v28, v9

    move-object/from16 v31, v12

    move/from16 v29, v13

    goto/16 :goto_440

    .line 528
    :cond_13c
    const/16 v16, 0x0

    .line 529
    const/4 v11, 0x0

    .line 530
    .local v11, "startedExecutable":Z
    const/16 v20, 0x0

    .line 531
    .local v20, "startedCommand":Z
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v27
    :try_end_145
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12a .. :try_end_145} :catch_3c3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12a .. :try_end_145} :catch_39f
    .catch Ljava/io/IOException; {:try_start_12a .. :try_end_145} :catch_37b
    .catch Ljava/lang/Exception; {:try_start_12a .. :try_end_145} :catch_369

    move/from16 v35, v27

    move-object/from16 v27, v5

    move/from16 v5, v35

    .line 532
    .local v5, "tagType":I
    .local v27, "itemInfo":Landroid/content/pm/PackageItemInfo;
    :goto_14b
    move-object/from16 v28, v9

    const/4 v9, 0x1

    if-eq v5, v9, :cond_35b

    .line 533
    :try_start_150
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v25
    :try_end_154
    .catch Ljava/lang/IllegalArgumentException; {:try_start_150 .. :try_end_154} :catch_350
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_150 .. :try_end_154} :catch_346
    .catch Ljava/io/IOException; {:try_start_150 .. :try_end_154} :catch_33c
    .catch Ljava/lang/Exception; {:try_start_150 .. :try_end_154} :catch_332

    move-object/from16 v29, v25

    .line 534
    .local v29, "elementName":Ljava/lang/String;
    const/4 v9, 0x2

    move/from16 v30, v11

    .end local v11    # "startedExecutable":Z
    .local v30, "startedExecutable":Z
    const-string v11, "command"

    move-object/from16 v31, v12

    .end local v12    # "executableListArray":[Ljava/util/List;
    .local v31, "executableListArray":[Ljava/util/List;
    const-string v12, "executable"

    if-ne v5, v9, :cond_23d

    .line 535
    move-object/from16 v9, v29

    .end local v29    # "elementName":Ljava/lang/String;
    .local v9, "elementName":Ljava/lang/String;
    :try_start_163
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16b

    .line 536
    const/4 v12, 0x1

    .end local v30    # "startedExecutable":Z
    .local v12, "startedExecutable":Z
    goto :goto_16d

    .line 535
    .end local v12    # "startedExecutable":Z
    .restart local v30    # "startedExecutable":Z
    :cond_16b
    move/from16 v12, v30

    .line 538
    .end local v30    # "startedExecutable":Z
    .restart local v12    # "startedExecutable":Z
    :goto_16d
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11
    :try_end_171
    .catch Ljava/lang/IllegalArgumentException; {:try_start_163 .. :try_end_171} :catch_236
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_163 .. :try_end_171} :catch_22f
    .catch Ljava/io/IOException; {:try_start_163 .. :try_end_171} :catch_228
    .catch Ljava/lang/Exception; {:try_start_163 .. :try_end_171} :catch_221

    if-eqz v11, :cond_1b8

    .line 539
    if-eqz v12, :cond_1a2

    .line 542
    const/16 v20, 0x1

    .line 543
    :try_start_177
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v11

    .line 544
    .local v11, "attr":Landroid/util/AttributeSet;
    invoke-static {v1, v11, v10}, Lcom/samsung/android/app/SemExecutableInfo;->getActivityMetaData(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/ComponentName;)Lcom/samsung/android/app/SemExecutableInfo;

    move-result-object v29
    :try_end_17f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_177 .. :try_end_17f} :catch_19b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_177 .. :try_end_17f} :catch_194
    .catch Ljava/io/IOException; {:try_start_177 .. :try_end_17f} :catch_18d
    .catch Ljava/lang/Exception; {:try_start_177 .. :try_end_17f} :catch_186

    move-object/from16 v16, v29

    move/from16 v29, v13

    move-object/from16 v11, v16

    goto :goto_1bc

    .line 596
    .end local v0    # "xml":Landroid/content/res/XmlResourceParser;
    .end local v5    # "tagType":I
    .end local v9    # "elementName":Ljava/lang/String;
    .end local v11    # "attr":Landroid/util/AttributeSet;
    .end local v12    # "startedExecutable":Z
    .end local v20    # "startedCommand":Z
    :catch_186
    move-exception v0

    move-object/from16 v33, v4

    move/from16 v29, v13

    goto/16 :goto_374

    .line 594
    :catch_18d
    move-exception v0

    move-object/from16 v33, v4

    move/from16 v29, v13

    goto/16 :goto_386

    .line 592
    :catch_194
    move-exception v0

    move-object/from16 v33, v4

    move/from16 v29, v13

    goto/16 :goto_3aa

    .line 590
    :catch_19b
    move-exception v0

    move-object/from16 v33, v4

    move/from16 v29, v13

    goto/16 :goto_3ce

    .line 540
    .restart local v0    # "xml":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "tagType":I
    .restart local v9    # "elementName":Ljava/lang/String;
    .restart local v12    # "startedExecutable":Z
    .restart local v20    # "startedCommand":Z
    :cond_1a2
    :try_start_1a2
    new-instance v11, Lorg/xmlpull/v1/XmlPullParserException;
    :try_end_1a4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a2 .. :try_end_1a4} :catch_236
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a2 .. :try_end_1a4} :catch_22f
    .catch Ljava/io/IOException; {:try_start_1a2 .. :try_end_1a4} :catch_228
    .catch Ljava/lang/Exception; {:try_start_1a2 .. :try_end_1a4} :catch_221

    move/from16 v29, v13

    :try_start_1a6
    const-string v13, "executable element wasn\'t started"

    invoke-direct {v11, v13}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "newSemExecutableInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/SemExecutableInfo;>;"
    .end local v7    # "isDisabled":Z
    .end local v8    # "isComponentDisabled":Z
    .end local v10    # "cName":Landroid/content/ComponentName;
    .end local v15    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v16    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .end local v17    # "ACTION_EXECUTABLE":Ljava/lang/String;
    .end local v19    # "info":Landroid/content/pm/ResolveInfo;
    .end local v21    # "queryFlag":I
    .end local v22    # "activityExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v23    # "receiverExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v24    # "pm":Landroid/content/pm/PackageManager;
    .end local v26    # "serviceExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v27    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .end local v31    # "executableListArray":[Ljava/util/List;
    .end local p0    # "context":Landroid/content/Context;
    throw v11
    :try_end_1ac
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a6 .. :try_end_1ac} :catch_1b5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1a6 .. :try_end_1ac} :catch_1b2
    .catch Ljava/io/IOException; {:try_start_1a6 .. :try_end_1ac} :catch_1af
    .catch Ljava/lang/Exception; {:try_start_1a6 .. :try_end_1ac} :catch_1ac

    .line 596
    .end local v0    # "xml":Landroid/content/res/XmlResourceParser;
    .end local v5    # "tagType":I
    .end local v9    # "elementName":Ljava/lang/String;
    .end local v12    # "startedExecutable":Z
    .end local v20    # "startedCommand":Z
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v6    # "newSemExecutableInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/SemExecutableInfo;>;"
    .restart local v7    # "isDisabled":Z
    .restart local v8    # "isComponentDisabled":Z
    .restart local v10    # "cName":Landroid/content/ComponentName;
    .restart local v15    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v16    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v17    # "ACTION_EXECUTABLE":Ljava/lang/String;
    .restart local v19    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v21    # "queryFlag":I
    .restart local v22    # "activityExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v23    # "receiverExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v24    # "pm":Landroid/content/pm/PackageManager;
    .restart local v26    # "serviceExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v27    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .restart local v31    # "executableListArray":[Ljava/util/List;
    .restart local p0    # "context":Landroid/content/Context;
    :catch_1ac
    move-exception v0

    goto/16 :goto_224

    .line 594
    :catch_1af
    move-exception v0

    goto/16 :goto_22b

    .line 592
    :catch_1b2
    move-exception v0

    goto/16 :goto_232

    .line 590
    :catch_1b5
    move-exception v0

    goto/16 :goto_239

    .line 538
    .restart local v0    # "xml":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "tagType":I
    .restart local v9    # "elementName":Ljava/lang/String;
    .restart local v12    # "startedExecutable":Z
    .restart local v20    # "startedCommand":Z
    :cond_1b8
    move/from16 v29, v13

    move-object/from16 v11, v16

    .line 546
    .end local v16    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .local v11, "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    :goto_1bc
    :try_start_1bc
    const-string v13, "extras-attr"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_1c2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1bc .. :try_end_1c2} :catch_21a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1bc .. :try_end_1c2} :catch_213
    .catch Ljava/io/IOException; {:try_start_1bc .. :try_end_1c2} :catch_20c
    .catch Ljava/lang/Exception; {:try_start_1bc .. :try_end_1c2} :catch_205

    if-eqz v13, :cond_1fa

    .line 547
    if-eqz v12, :cond_1f0

    if-eqz v20, :cond_1f0

    .line 550
    :try_start_1c8
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v13

    .line 551
    .local v13, "attr":Landroid/util/AttributeSet;
    if-eqz v11, :cond_1d1

    .line 552
    invoke-direct {v11, v1, v13}, Lcom/samsung/android/app/SemExecutableInfo;->addExtraAttribute(Landroid/content/Context;Landroid/util/AttributeSet;)V
    :try_end_1d1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c8 .. :try_end_1d1} :catch_1e9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1c8 .. :try_end_1d1} :catch_1e2
    .catch Ljava/io/IOException; {:try_start_1c8 .. :try_end_1d1} :catch_1db
    .catch Ljava/lang/Exception; {:try_start_1c8 .. :try_end_1d1} :catch_1d4

    .line 554
    .end local v13    # "attr":Landroid/util/AttributeSet;
    :cond_1d1
    move-object/from16 v16, v11

    goto :goto_1fc

    .line 596
    .end local v0    # "xml":Landroid/content/res/XmlResourceParser;
    .end local v5    # "tagType":I
    .end local v9    # "elementName":Ljava/lang/String;
    .end local v12    # "startedExecutable":Z
    .end local v20    # "startedCommand":Z
    :catch_1d4
    move-exception v0

    move-object/from16 v33, v4

    move-object/from16 v16, v11

    goto/16 :goto_374

    .line 594
    :catch_1db
    move-exception v0

    move-object/from16 v33, v4

    move-object/from16 v16, v11

    goto/16 :goto_386

    .line 592
    :catch_1e2
    move-exception v0

    move-object/from16 v33, v4

    move-object/from16 v16, v11

    goto/16 :goto_3aa

    .line 590
    :catch_1e9
    move-exception v0

    move-object/from16 v33, v4

    move-object/from16 v16, v11

    goto/16 :goto_3ce

    .line 548
    .restart local v0    # "xml":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "tagType":I
    .restart local v9    # "elementName":Ljava/lang/String;
    .restart local v12    # "startedExecutable":Z
    .restart local v20    # "startedCommand":Z
    :cond_1f0
    :try_start_1f0
    new-instance v13, Lorg/xmlpull/v1/XmlPullParserException;
    :try_end_1f2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f0 .. :try_end_1f2} :catch_21a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1f0 .. :try_end_1f2} :catch_213
    .catch Ljava/io/IOException; {:try_start_1f0 .. :try_end_1f2} :catch_20c
    .catch Ljava/lang/Exception; {:try_start_1f0 .. :try_end_1f2} :catch_205

    move-object/from16 v16, v11

    .end local v11    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v16    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    :try_start_1f4
    const-string v11, "executable or command element wasn\'t started"

    invoke-direct {v13, v11}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6    # "newSemExecutableInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/SemExecutableInfo;>;"
    .end local v7    # "isDisabled":Z
    .end local v8    # "isComponentDisabled":Z
    .end local v10    # "cName":Landroid/content/ComponentName;
    .end local v15    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v16    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .end local v17    # "ACTION_EXECUTABLE":Ljava/lang/String;
    .end local v19    # "info":Landroid/content/pm/ResolveInfo;
    .end local v21    # "queryFlag":I
    .end local v22    # "activityExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v23    # "receiverExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v24    # "pm":Landroid/content/pm/PackageManager;
    .end local v26    # "serviceExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v27    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .end local v31    # "executableListArray":[Ljava/util/List;
    .end local p0    # "context":Landroid/content/Context;
    throw v13
    :try_end_1fa
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1f4 .. :try_end_1fa} :catch_1b5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1f4 .. :try_end_1fa} :catch_1b2
    .catch Ljava/io/IOException; {:try_start_1f4 .. :try_end_1fa} :catch_1af
    .catch Ljava/lang/Exception; {:try_start_1f4 .. :try_end_1fa} :catch_1ac

    .line 546
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v6    # "newSemExecutableInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/app/SemExecutableInfo;>;"
    .restart local v7    # "isDisabled":Z
    .restart local v8    # "isComponentDisabled":Z
    .restart local v10    # "cName":Landroid/content/ComponentName;
    .restart local v11    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v15    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v17    # "ACTION_EXECUTABLE":Ljava/lang/String;
    .restart local v19    # "info":Landroid/content/pm/ResolveInfo;
    .restart local v21    # "queryFlag":I
    .restart local v22    # "activityExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v23    # "receiverExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v24    # "pm":Landroid/content/pm/PackageManager;
    .restart local v26    # "serviceExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v27    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .restart local v31    # "executableListArray":[Ljava/util/List;
    .restart local p0    # "context":Landroid/content/Context;
    :cond_1fa
    move-object/from16 v16, v11

    .line 588
    .end local v11    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v16    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    :goto_1fc
    move-object/from16 v33, v4

    move/from16 v32, v5

    move-object/from16 v34, v9

    move v11, v12

    goto/16 :goto_316

    .line 596
    .end local v0    # "xml":Landroid/content/res/XmlResourceParser;
    .end local v5    # "tagType":I
    .end local v9    # "elementName":Ljava/lang/String;
    .end local v12    # "startedExecutable":Z
    .end local v16    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .end local v20    # "startedCommand":Z
    .restart local v11    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    :catch_205
    move-exception v0

    move-object/from16 v16, v11

    move-object/from16 v33, v4

    .end local v11    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v16    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    goto/16 :goto_374

    .line 594
    .end local v16    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v11    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    :catch_20c
    move-exception v0

    move-object/from16 v16, v11

    move-object/from16 v33, v4

    .end local v11    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v16    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    goto/16 :goto_386

    .line 592
    .end local v16    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v11    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    :catch_213
    move-exception v0

    move-object/from16 v16, v11

    move-object/from16 v33, v4

    .end local v11    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v16    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    goto/16 :goto_3aa

    .line 590
    .end local v16    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v11    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    :catch_21a
    move-exception v0

    move-object/from16 v16, v11

    move-object/from16 v33, v4

    .end local v11    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v16    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    goto/16 :goto_3ce

    .line 596
    :catch_221
    move-exception v0

    move/from16 v29, v13

    :goto_224
    move-object/from16 v33, v4

    goto/16 :goto_374

    .line 594
    :catch_228
    move-exception v0

    move/from16 v29, v13

    :goto_22b
    move-object/from16 v33, v4

    goto/16 :goto_386

    .line 592
    :catch_22f
    move-exception v0

    move/from16 v29, v13

    :goto_232
    move-object/from16 v33, v4

    goto/16 :goto_3aa

    .line 590
    :catch_236
    move-exception v0

    move/from16 v29, v13

    :goto_239
    move-object/from16 v33, v4

    goto/16 :goto_3ce

    .line 555
    .restart local v0    # "xml":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "tagType":I
    .restart local v20    # "startedCommand":Z
    .restart local v29    # "elementName":Ljava/lang/String;
    .restart local v30    # "startedExecutable":Z
    :cond_23d
    move-object/from16 v9, v29

    move/from16 v29, v13

    .end local v29    # "elementName":Ljava/lang/String;
    .restart local v9    # "elementName":Ljava/lang/String;
    const/4 v13, 0x3

    if-ne v5, v13, :cond_30c

    .line 556
    :try_start_244
    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_24c

    .line 557
    const/4 v12, 0x0

    .end local v30    # "startedExecutable":Z
    .restart local v12    # "startedExecutable":Z
    goto :goto_24e

    .line 556
    .end local v12    # "startedExecutable":Z
    .restart local v30    # "startedExecutable":Z
    :cond_24c
    move/from16 v12, v30

    .line 559
    .end local v30    # "startedExecutable":Z
    .restart local v12    # "startedExecutable":Z
    :goto_24e
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2e6

    .line 560
    const/4 v11, 0x0

    .line 562
    .end local v20    # "startedCommand":Z
    .local v11, "startedCommand":Z
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/app/SemExecutableInfo;->checkValidate(Lcom/samsung/android/app/SemExecutableInfo;)Z

    move-result v13

    if-eqz v13, :cond_2d7

    .line 564
    invoke-static {}, Lcom/samsung/android/app/SemExecutableWhitelist;->getInstance()Lcom/samsung/android/app/SemExecutableWhitelist;

    move-result-object v13

    .line 565
    .local v13, "whiteList":Lcom/samsung/android/app/SemExecutableWhitelist;
    move/from16 v32, v5

    .end local v5    # "tagType":I
    .local v32, "tagType":I
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v1, v5}, Lcom/samsung/android/app/SemExecutableWhitelist;->isAllowedToUseOrder(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5
    :try_end_267
    .catch Ljava/lang/IllegalArgumentException; {:try_start_244 .. :try_end_267} :catch_305
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_244 .. :try_end_267} :catch_2fe
    .catch Ljava/io/IOException; {:try_start_244 .. :try_end_267} :catch_2f7
    .catch Ljava/lang/Exception; {:try_start_244 .. :try_end_267} :catch_2f0

    .line 566
    .local v5, "bSamsungApps":Z
    move-object/from16 v1, v16

    .end local v16    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .local v1, "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    :try_start_269
    invoke-static {v1, v5}, Lcom/samsung/android/app/SemExecutableInfo;->examineOrderInCategory(Lcom/samsung/android/app/SemExecutableInfo;Z)V

    .line 568
    move/from16 v16, v5

    .end local v5    # "bSamsungApps":Z
    .local v16, "bSamsungApps":Z
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v5}, Lcom/samsung/android/app/SemExecutableInfo;->setId(Ljava/lang/String;)V

    .line 571
    const/4 v5, 0x0

    .line 573
    .local v5, "bDuplicatedID":Z
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_278
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v30

    if-eqz v30, :cond_29d

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/samsung/android/app/SemExecutableInfo;
    :try_end_284
    .catch Ljava/lang/IllegalArgumentException; {:try_start_269 .. :try_end_284} :catch_2d0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_269 .. :try_end_284} :catch_2c9
    .catch Ljava/io/IOException; {:try_start_269 .. :try_end_284} :catch_2c2
    .catch Ljava/lang/Exception; {:try_start_269 .. :try_end_284} :catch_2bb

    .line 574
    .local v30, "checkInfo":Lcom/samsung/android/app/SemExecutableInfo;
    move-object/from16 v33, v4

    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v33, "appInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_286
    invoke-virtual/range {v30 .. v30}, Lcom/samsung/android/app/SemExecutableInfo;->getId()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v34, v9

    .end local v9    # "elementName":Ljava/lang/String;
    .local v34, "elementName":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/samsung/android/app/SemExecutableInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_298

    .line 575
    const/4 v4, 0x1

    move v5, v4

    .line 577
    .end local v30    # "checkInfo":Lcom/samsung/android/app/SemExecutableInfo;
    :cond_298
    move-object/from16 v4, v33

    move-object/from16 v9, v34

    goto :goto_278

    .line 579
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v34    # "elementName":Ljava/lang/String;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v9    # "elementName":Ljava/lang/String;
    :cond_29d
    move-object/from16 v33, v4

    move-object/from16 v34, v9

    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v9    # "elementName":Ljava/lang/String;
    .restart local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v34    # "elementName":Ljava/lang/String;
    if-nez v5, :cond_2df

    .line 581
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2a6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_286 .. :try_end_2a6} :catch_2b6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_286 .. :try_end_2a6} :catch_2b1
    .catch Ljava/io/IOException; {:try_start_286 .. :try_end_2a6} :catch_2ac
    .catch Ljava/lang/Exception; {:try_start_286 .. :try_end_2a6} :catch_2a7

    goto :goto_2df

    .line 596
    .end local v0    # "xml":Landroid/content/res/XmlResourceParser;
    .end local v5    # "bDuplicatedID":Z
    .end local v11    # "startedCommand":Z
    .end local v12    # "startedExecutable":Z
    .end local v13    # "whiteList":Lcom/samsung/android/app/SemExecutableWhitelist;
    .end local v16    # "bSamsungApps":Z
    .end local v32    # "tagType":I
    .end local v34    # "elementName":Ljava/lang/String;
    :catch_2a7
    move-exception v0

    move-object/from16 v16, v1

    goto/16 :goto_374

    .line 594
    :catch_2ac
    move-exception v0

    move-object/from16 v16, v1

    goto/16 :goto_386

    .line 592
    :catch_2b1
    move-exception v0

    move-object/from16 v16, v1

    goto/16 :goto_3aa

    .line 590
    :catch_2b6
    move-exception v0

    move-object/from16 v16, v1

    goto/16 :goto_3ce

    .line 596
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_2bb
    move-exception v0

    move-object/from16 v33, v4

    move-object/from16 v16, v1

    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto/16 :goto_374

    .line 594
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_2c2
    move-exception v0

    move-object/from16 v33, v4

    move-object/from16 v16, v1

    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto/16 :goto_386

    .line 592
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_2c9
    move-exception v0

    move-object/from16 v33, v4

    move-object/from16 v16, v1

    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto/16 :goto_3aa

    .line 590
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_2d0
    move-exception v0

    move-object/from16 v33, v4

    move-object/from16 v16, v1

    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto/16 :goto_3ce

    .line 562
    .end local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v0    # "xml":Landroid/content/res/XmlResourceParser;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v5, "tagType":I
    .restart local v9    # "elementName":Ljava/lang/String;
    .restart local v11    # "startedCommand":Z
    .restart local v12    # "startedExecutable":Z
    .local v16, "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    :cond_2d7
    move-object/from16 v33, v4

    move/from16 v32, v5

    move-object/from16 v34, v9

    move-object/from16 v1, v16

    .line 584
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "tagType":I
    .end local v9    # "elementName":Ljava/lang/String;
    .end local v16    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v32    # "tagType":I
    .restart local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v34    # "elementName":Ljava/lang/String;
    :cond_2df
    :goto_2df
    const/4 v1, 0x0

    move-object/from16 v16, v1

    move/from16 v20, v11

    move v11, v12

    goto :goto_316

    .line 559
    .end local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .end local v11    # "startedCommand":Z
    .end local v32    # "tagType":I
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v34    # "elementName":Ljava/lang/String;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "tagType":I
    .restart local v9    # "elementName":Ljava/lang/String;
    .restart local v16    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v20    # "startedCommand":Z
    :cond_2e6
    move-object/from16 v33, v4

    move/from16 v32, v5

    move-object/from16 v34, v9

    move-object/from16 v1, v16

    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "tagType":I
    .end local v9    # "elementName":Ljava/lang/String;
    .end local v16    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v32    # "tagType":I
    .restart local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v34    # "elementName":Ljava/lang/String;
    move v11, v12

    goto :goto_316

    .line 596
    .end local v0    # "xml":Landroid/content/res/XmlResourceParser;
    .end local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .end local v12    # "startedExecutable":Z
    .end local v20    # "startedCommand":Z
    .end local v32    # "tagType":I
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v34    # "elementName":Ljava/lang/String;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v16    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    :catch_2f0
    move-exception v0

    move-object/from16 v33, v4

    move-object/from16 v1, v16

    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto/16 :goto_374

    .line 594
    .end local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v16    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    :catch_2f7
    move-exception v0

    move-object/from16 v33, v4

    move-object/from16 v1, v16

    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto/16 :goto_386

    .line 592
    .end local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v16    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    :catch_2fe
    move-exception v0

    move-object/from16 v33, v4

    move-object/from16 v1, v16

    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto/16 :goto_3aa

    .line 590
    .end local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v16    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    :catch_305
    move-exception v0

    move-object/from16 v33, v4

    move-object/from16 v1, v16

    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v16    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto/16 :goto_3ce

    .line 555
    .end local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v0    # "xml":Landroid/content/res/XmlResourceParser;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "tagType":I
    .restart local v9    # "elementName":Ljava/lang/String;
    .restart local v16    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v20    # "startedCommand":Z
    .local v30, "startedExecutable":Z
    :cond_30c
    move-object/from16 v33, v4

    move/from16 v32, v5

    move-object/from16 v34, v9

    move-object/from16 v1, v16

    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "tagType":I
    .end local v9    # "elementName":Ljava/lang/String;
    .end local v16    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v32    # "tagType":I
    .restart local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v34    # "elementName":Ljava/lang/String;
    move/from16 v11, v30

    .line 588
    .end local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .end local v30    # "startedExecutable":Z
    .local v11, "startedExecutable":Z
    .restart local v16    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    :goto_316
    :try_start_316
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1
    :try_end_31a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_316 .. :try_end_31a} :catch_32f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_316 .. :try_end_31a} :catch_32c
    .catch Ljava/io/IOException; {:try_start_316 .. :try_end_31a} :catch_329
    .catch Ljava/lang/Exception; {:try_start_316 .. :try_end_31a} :catch_327

    move v5, v1

    .line 589
    .end local v32    # "tagType":I
    .end local v34    # "elementName":Ljava/lang/String;
    .restart local v5    # "tagType":I
    move-object/from16 v1, p0

    move-object/from16 v9, v28

    move/from16 v13, v29

    move-object/from16 v12, v31

    move-object/from16 v4, v33

    goto/16 :goto_14b

    .line 596
    .end local v0    # "xml":Landroid/content/res/XmlResourceParser;
    .end local v5    # "tagType":I
    .end local v11    # "startedExecutable":Z
    .end local v20    # "startedCommand":Z
    :catch_327
    move-exception v0

    goto :goto_374

    .line 594
    :catch_329
    move-exception v0

    goto/16 :goto_386

    .line 592
    :catch_32c
    move-exception v0

    goto/16 :goto_3aa

    .line 590
    :catch_32f
    move-exception v0

    goto/16 :goto_3ce

    .line 596
    .end local v31    # "executableListArray":[Ljava/util/List;
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v12, "executableListArray":[Ljava/util/List;
    :catch_332
    move-exception v0

    move-object/from16 v33, v4

    move-object/from16 v31, v12

    move/from16 v29, v13

    move-object/from16 v1, v16

    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "executableListArray":[Ljava/util/List;
    .end local v16    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v31    # "executableListArray":[Ljava/util/List;
    .restart local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_374

    .line 594
    .end local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .end local v31    # "executableListArray":[Ljava/util/List;
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v12    # "executableListArray":[Ljava/util/List;
    .restart local v16    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    :catch_33c
    move-exception v0

    move-object/from16 v33, v4

    move-object/from16 v31, v12

    move/from16 v29, v13

    move-object/from16 v1, v16

    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "executableListArray":[Ljava/util/List;
    .end local v16    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v31    # "executableListArray":[Ljava/util/List;
    .restart local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_386

    .line 592
    .end local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .end local v31    # "executableListArray":[Ljava/util/List;
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v12    # "executableListArray":[Ljava/util/List;
    .restart local v16    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    :catch_346
    move-exception v0

    move-object/from16 v33, v4

    move-object/from16 v31, v12

    move/from16 v29, v13

    move-object/from16 v1, v16

    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "executableListArray":[Ljava/util/List;
    .end local v16    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v31    # "executableListArray":[Ljava/util/List;
    .restart local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_3aa

    .line 590
    .end local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .end local v31    # "executableListArray":[Ljava/util/List;
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v12    # "executableListArray":[Ljava/util/List;
    .restart local v16    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    :catch_350
    move-exception v0

    move-object/from16 v33, v4

    move-object/from16 v31, v12

    move/from16 v29, v13

    move-object/from16 v1, v16

    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v12    # "executableListArray":[Ljava/util/List;
    .end local v16    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v31    # "executableListArray":[Ljava/util/List;
    .restart local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto/16 :goto_3ce

    .line 532
    .end local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .end local v31    # "executableListArray":[Ljava/util/List;
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v0    # "xml":Landroid/content/res/XmlResourceParser;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "tagType":I
    .restart local v11    # "startedExecutable":Z
    .restart local v12    # "executableListArray":[Ljava/util/List;
    .restart local v16    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v20    # "startedCommand":Z
    :cond_35b
    move-object/from16 v33, v4

    move/from16 v32, v5

    move/from16 v30, v11

    move-object/from16 v31, v12

    move/from16 v29, v13

    move-object/from16 v1, v16

    .line 598
    .end local v0    # "xml":Landroid/content/res/XmlResourceParser;
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "tagType":I
    .end local v11    # "startedExecutable":Z
    .end local v12    # "executableListArray":[Ljava/util/List;
    .end local v16    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .end local v20    # "startedCommand":Z
    .restart local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v31    # "executableListArray":[Ljava/util/List;
    .restart local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto/16 :goto_3f7

    .line 596
    .end local v1    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .end local v27    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .end local v31    # "executableListArray":[Ljava/util/List;
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .local v5, "itemInfo":Landroid/content/pm/PackageItemInfo;
    .restart local v12    # "executableListArray":[Ljava/util/List;
    .restart local v16    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    :catch_369
    move-exception v0

    move-object/from16 v33, v4

    move-object/from16 v27, v5

    move-object/from16 v28, v9

    move-object/from16 v31, v12

    move/from16 v29, v13

    .line 597
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .end local v12    # "executableListArray":[Ljava/util/List;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v27    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .restart local v31    # "executableListArray":[Ljava/util/List;
    .restart local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_374
    const-string v1, "Unknown Exception while Reading SemExecutableInfo metadata"

    invoke-static {v3, v1, v0}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3f7

    .line 594
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v27    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .end local v31    # "executableListArray":[Ljava/util/List;
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .restart local v12    # "executableListArray":[Ljava/util/List;
    :catch_37b
    move-exception v0

    move-object/from16 v33, v4

    move-object/from16 v27, v5

    move-object/from16 v28, v9

    move-object/from16 v31, v12

    move/from16 v29, v13

    .line 595
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .end local v12    # "executableListArray":[Ljava/util/List;
    .local v0, "e":Ljava/io/IOException;
    .restart local v27    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .restart local v31    # "executableListArray":[Ljava/util/List;
    .restart local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 598
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_3f7

    .line 592
    .end local v27    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .end local v31    # "executableListArray":[Ljava/util/List;
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .restart local v12    # "executableListArray":[Ljava/util/List;
    :catch_39f
    move-exception v0

    move-object/from16 v33, v4

    move-object/from16 v27, v5

    move-object/from16 v28, v9

    move-object/from16 v31, v12

    move/from16 v29, v13

    .line 593
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .end local v12    # "executableListArray":[Ljava/util/List;
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v27    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .restart local v31    # "executableListArray":[Ljava/util/List;
    .restart local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_3aa
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 598
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    goto :goto_3f7

    .line 590
    .end local v27    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .end local v31    # "executableListArray":[Ljava/util/List;
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .restart local v12    # "executableListArray":[Ljava/util/List;
    :catch_3c3
    move-exception v0

    move-object/from16 v33, v4

    move-object/from16 v27, v5

    move-object/from16 v28, v9

    move-object/from16 v31, v12

    move/from16 v29, v13

    .line 591
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .end local v12    # "executableListArray":[Ljava/util/List;
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v27    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .restart local v31    # "executableListArray":[Ljava/util/List;
    .restart local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_3ce
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid attribute in metadata for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/util/SemLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    nop

    .line 599
    .end local v7    # "isDisabled":Z
    .end local v8    # "isComponentDisabled":Z
    .end local v10    # "cName":Landroid/content/ComponentName;
    .end local v19    # "info":Landroid/content/pm/ResolveInfo;
    .end local v27    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_3f7
    move-object/from16 v1, p0

    move-object/from16 v4, v18

    move/from16 v7, v21

    move-object/from16 v8, v22

    move-object/from16 v10, v23

    move-object/from16 v5, v24

    move-object/from16 v11, v26

    move-object/from16 v9, v28

    move/from16 v13, v29

    move-object/from16 v12, v31

    goto/16 :goto_74

    .line 515
    .end local v23    # "receiverExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v26    # "serviceExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v31    # "executableListArray":[Ljava/util/List;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .restart local v7    # "isDisabled":Z
    .restart local v8    # "isComponentDisabled":Z
    .local v10, "receiverExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .local v11, "serviceExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v12    # "executableListArray":[Ljava/util/List;
    .restart local v19    # "info":Landroid/content/pm/ResolveInfo;
    .local v20, "cName":Landroid/content/ComponentName;
    :cond_40d
    move-object/from16 v33, v4

    move-object/from16 v27, v5

    move-object/from16 v28, v9

    move-object/from16 v23, v10

    move-object/from16 v26, v11

    move-object/from16 v31, v12

    move/from16 v29, v13

    .line 517
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .end local v10    # "receiverExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "serviceExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v12    # "executableListArray":[Ljava/util/List;
    .restart local v23    # "receiverExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v26    # "serviceExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v27    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .restart local v31    # "executableListArray":[Ljava/util/List;
    .restart local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_41b
    sget-boolean v0, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v0, :cond_440

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "skip disable component: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    .end local v7    # "isDisabled":Z
    .end local v8    # "isComponentDisabled":Z
    .end local v19    # "info":Landroid/content/pm/ResolveInfo;
    .end local v20    # "cName":Landroid/content/ComponentName;
    .end local v27    # "itemInfo":Landroid/content/pm/PackageItemInfo;
    .end local v33    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_440
    :goto_440
    move-object/from16 v1, p0

    move-object/from16 v4, v18

    move/from16 v7, v21

    move-object/from16 v8, v22

    move-object/from16 v10, v23

    move-object/from16 v5, v24

    move-object/from16 v11, v26

    move-object/from16 v9, v28

    move/from16 v13, v29

    move-object/from16 v12, v31

    goto/16 :goto_74

    .end local v21    # "queryFlag":I
    .end local v22    # "activityExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v23    # "receiverExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v24    # "pm":Landroid/content/pm/PackageManager;
    .end local v26    # "serviceExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v31    # "executableListArray":[Ljava/util/List;
    .local v5, "pm":Landroid/content/pm/PackageManager;
    .local v7, "queryFlag":I
    .local v8, "activityExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v10    # "receiverExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v11    # "serviceExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v12    # "executableListArray":[Ljava/util/List;
    :cond_456
    move-object/from16 v24, v5

    move/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v28, v9

    move-object/from16 v23, v10

    move-object/from16 v26, v11

    move-object/from16 v31, v12

    move/from16 v29, v13

    .line 492
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "queryFlag":I
    .end local v8    # "activityExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v10    # "receiverExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "serviceExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v12    # "executableListArray":[Ljava/util/List;
    .end local v15    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v21    # "queryFlag":I
    .restart local v22    # "activityExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v23    # "receiverExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v24    # "pm":Landroid/content/pm/PackageManager;
    .restart local v26    # "serviceExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v31    # "executableListArray":[Ljava/util/List;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p0

    move-object/from16 v0, v16

    move-object/from16 v4, v17

    goto/16 :goto_44

    .line 602
    .end local v16    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .end local v17    # "ACTION_EXECUTABLE":Ljava/lang/String;
    .end local v21    # "queryFlag":I
    .end local v22    # "activityExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v23    # "receiverExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v24    # "pm":Landroid/content/pm/PackageManager;
    .end local v26    # "serviceExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v31    # "executableListArray":[Ljava/util/List;
    .local v0, "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .local v4, "ACTION_EXECUTABLE":Ljava/lang/String;
    .restart local v5    # "pm":Landroid/content/pm/PackageManager;
    .restart local v7    # "queryFlag":I
    .restart local v8    # "activityExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v10    # "receiverExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v11    # "serviceExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v12    # "executableListArray":[Ljava/util/List;
    :cond_470
    move-object/from16 v16, v0

    move-object/from16 v17, v4

    move-object/from16 v24, v5

    move/from16 v21, v7

    move-object/from16 v22, v8

    move-object/from16 v23, v10

    move-object/from16 v26, v11

    move-object/from16 v31, v12

    .end local v0    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .end local v4    # "ACTION_EXECUTABLE":Ljava/lang/String;
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "queryFlag":I
    .end local v8    # "activityExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v10    # "receiverExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "serviceExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v12    # "executableListArray":[Ljava/util/List;
    .restart local v16    # "lastSemExecutableInfo":Lcom/samsung/android/app/SemExecutableInfo;
    .restart local v17    # "ACTION_EXECUTABLE":Ljava/lang/String;
    .restart local v21    # "queryFlag":I
    .restart local v22    # "activityExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v23    # "receiverExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v24    # "pm":Landroid/content/pm/PackageManager;
    .restart local v26    # "serviceExecutableList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v31    # "executableListArray":[Ljava/util/List;
    sget-boolean v0, Lcom/samsung/android/app/SemExecutableInfo;->DEBUG:Z

    if-eqz v0, :cond_49f

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "scan SemExecutableInfo end: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_49f
    return-object v6
.end method

.method private setId(Ljava/lang/String;)V
    .registers 10
    .param p1, "applicaitonPackageName"    # Ljava/lang/String;

    .line 186
    const-string v0, "SemExecutableInfo"

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 187
    .local v1, "builder":Landroid/net/Uri$Builder;
    const-string v2, "executable"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getComponentName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getLaunchType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getBundleString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 190
    .local v2, "baseId":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "id":Ljava/lang/String;
    :try_start_50
    iget-object v4, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 193
    .local v4, "lastId":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Use defined mUid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_6e} :catch_70

    move-object v3, v0

    .line 198
    .end local v4    # "lastId":J
    goto :goto_89

    .line 195
    :catch_70
    move-exception v4

    .line 196
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not set mUid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_89
    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 200
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    .line 201
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 850
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 822
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 823
    :cond_4
    instance-of v1, p1, Lcom/samsung/android/app/SemExecutableInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 825
    :cond_a
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/app/SemExecutableInfo;

    .line 827
    .local v1, "that":Lcom/samsung/android/app/SemExecutableInfo;
    iget-boolean v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mEnabled:Z

    iget-boolean v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mEnabled:Z

    if-eq v3, v4, :cond_14

    return v2

    .line 828
    :cond_14
    iget v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLabelId:I

    iget v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mLabelId:I

    if-eq v3, v4, :cond_1b

    return v2

    .line 829
    :cond_1b
    iget v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mIconId:I

    iget v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mIconId:I

    if-eq v3, v4, :cond_22

    return v2

    .line 830
    :cond_22
    iget v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mSmallIconId:I

    iget v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mSmallIconId:I

    if-eq v3, v4, :cond_29

    return v2

    .line 831
    :cond_29
    iget v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    iget v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    if-eq v3, v4, :cond_30

    return v2

    .line 832
    :cond_30
    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    if-eqz v3, :cond_3d

    iget-object v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    goto :goto_41

    :cond_3d
    iget-object v3, v1, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    if-eqz v3, :cond_42

    :goto_41
    return v2

    .line 833
    :cond_42
    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    if-eqz v3, :cond_4f

    iget-object v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    goto :goto_53

    :cond_4f
    iget-object v3, v1, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    if-eqz v3, :cond_54

    :goto_53
    return v2

    .line 834
    :cond_54
    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mAction:Ljava/lang/String;

    if-eqz v3, :cond_61

    iget-object v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_66

    goto :goto_65

    :cond_61
    iget-object v3, v1, Lcom/samsung/android/app/SemExecutableInfo;->mAction:Ljava/lang/String;

    if-eqz v3, :cond_66

    :goto_65
    return v2

    .line 835
    :cond_66
    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_73

    iget-object v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_78

    goto :goto_77

    :cond_73
    iget-object v3, v1, Lcom/samsung/android/app/SemExecutableInfo;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_78

    :goto_77
    return v2

    .line 836
    :cond_78
    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    if-eqz v3, :cond_85

    iget-object v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8a

    goto :goto_89

    :cond_85
    iget-object v3, v1, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    if-eqz v3, :cond_8a

    :goto_89
    return v2

    .line 837
    :cond_8a
    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    if-eqz v3, :cond_97

    iget-object v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9c

    goto :goto_9b

    :cond_97
    iget-object v3, v1, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    if-eqz v3, :cond_9c

    :goto_9b
    return v2

    .line 838
    :cond_9c
    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    if-eqz v3, :cond_a9

    iget-object v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ae

    goto :goto_ad

    :cond_a9
    iget-object v3, v1, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    if-eqz v3, :cond_ae

    :goto_ad
    return v2

    .line 839
    :cond_ae
    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mComponentName:Ljava/lang/String;

    if-eqz v3, :cond_bb

    iget-object v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mComponentName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c0

    goto :goto_bf

    :cond_bb
    iget-object v3, v1, Lcom/samsung/android/app/SemExecutableInfo;->mComponentName:Ljava/lang/String;

    if-eqz v3, :cond_c0

    :goto_bf
    return v2

    .line 840
    :cond_c0
    iget-object v3, p0, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    if-eqz v3, :cond_cd

    iget-object v4, v1, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d2

    goto :goto_d1

    :cond_cd
    iget-object v3, v1, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    if-eqz v3, :cond_d2

    :goto_d1
    return v2

    .line 842
    :cond_d2
    return v0
.end method

.method public getAction()Ljava/lang/String;
    .registers 2

    .line 232
    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public getActivityLaunchMode()I
    .registers 6

    .line 308
    const/4 v0, 0x0

    .line 309
    .local v0, "flags":I
    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    if-eqz v1, :cond_42

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_42

    .line 312
    :cond_c
    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 313
    .local v1, "modes":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    array-length v3, v1

    if-ge v2, v3, :cond_41

    .line 314
    aget-object v3, v1, v2

    .line 315
    .local v3, "mode":Ljava/lang/String;
    const-string/jumbo v4, "newTask"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 316
    const/high16 v4, 0x10000000

    or-int/2addr v0, v4

    goto :goto_33

    .line 317
    :cond_27
    const-string/jumbo v4, "singleTop"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 318
    const/high16 v4, 0x20000000

    or-int/2addr v0, v4

    .line 319
    :cond_33
    :goto_33
    const-string v4, "clearTop"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 320
    const/high16 v4, 0x4000000

    or-int/2addr v0, v4

    .line 313
    .end local v3    # "mode":Ljava/lang/String;
    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 323
    .end local v2    # "i":I
    :cond_41
    return v0

    .line 310
    .end local v1    # "modes":[Ljava/lang/String;
    :cond_42
    :goto_42
    return v0
.end method

.method public getCategories()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    if-eqz v0, :cond_18

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_18

    .line 222
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, "categories":[Ljava/lang/String;
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 220
    .end local v0    # "categories":[Ljava/lang/String;
    :cond_18
    :goto_18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getComponentName()Ljava/lang/String;
    .registers 2

    .line 297
    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mComponentName:Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .line 279
    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public getIconId()I
    .registers 2

    .line 248
    iget v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mIconId:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    .line 209
    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public getLabelId()I
    .registers 2

    .line 262
    iget v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLabelId:I

    return v0
.end method

.method public getLaunchType()I
    .registers 2

    .line 270
    iget v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 288
    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallIconId()I
    .registers 2

    .line 255
    iget v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mSmallIconId:I

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 241
    iget-boolean v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemExecutableInfo{enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", labelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLabelId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iconIId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mIconId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", smallIconIId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mSmallIconId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", action=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/SemExecutableInfo;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", packageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/SemExecutableInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", componentName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/SemExecutableInfo;->mComponentName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", launchMode=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 798
    .local v0, "retString":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 799
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a8
    iget-object v4, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_d9

    .line 802
    const-string v4, ", featureName =\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 803
    iget-object v4, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 805
    const-string v4, ", featureValue = \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    iget-object v4, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 801
    add-int/lit8 v3, v3, 0x1

    goto :goto_a8

    .line 809
    .end local v3    # "i":I
    :cond_d9
    const-string v3, ", mBundle =\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 810
    invoke-direct {p0}, Lcom/samsung/android/app/SemExecutableInfo;->getBundleString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 812
    const/16 v1, 0x7d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 814
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 816
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 858
    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mUid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 859
    iget-boolean v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mEnabled:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 860
    iget v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLabelId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 861
    iget v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mIconId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 862
    iget v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mSmallIconId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 863
    iget v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mLaunchType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 864
    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mCategory:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 865
    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 866
    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 867
    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureNames:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 868
    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mFeatureValues:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 869
    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 870
    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mComponentName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 871
    iget-object v0, p0, Lcom/samsung/android/app/SemExecutableInfo;->mActivityLaunchMode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 872
    return-void
.end method

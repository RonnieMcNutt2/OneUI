.class public Lcom/samsung/android/app/SemDualAppManager;
.super Ljava/lang/Object;
.source "SemDualAppManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/SemDualAppManager$DualAppVersion;,
        Lcom/samsung/android/app/SemDualAppManager$SepVersionInt;
    }
.end annotation


# static fields
.field private static final ACTION3_PACKAGE_NAME:Ljava/lang/String;

.field private static final ADW_PACKAGE_NAME:Ljava/lang/String;

.field private static final AFW_CAPABLE_LAUNCHER_APPS:[Ljava/lang/String;

.field private static final BLACKBERRYMESSENGER_PACKAGE_NAME:Ljava/lang/String;

.field private static final CHINA_SALES_CODES:[Ljava/lang/String;

.field public static final DA_PROFILE_ID_PROPERTY_NAME:Ljava/lang/String; = "sys.dualapp.profile_id"

.field private static final DCM_LIVEUX_PACKAGE_NAME:Ljava/lang/String;

.field static final DUAL_APP_WHITELIST_PACKAGES:[Ljava/lang/String;

.field static final DUAL_APP_WHITELIST_PACKAGES_FOR_CHINA:[Ljava/lang/String;

.field public static final DUAL_CALLER_PACKAGE_NAME:Ljava/lang/String; = "callerPackage"

.field public static final DUAL_ORI_SHORTCUT_COMPONENT:Ljava/lang/String; = "dual_shortcut_component"

.field private static final FACEBOOKMESSENGER_PACKAGE_NAME:Ljava/lang/String;

.field private static final FACEBOOK_PACKAGE_NAME:Ljava/lang/String;

.field private static final GOOGLE_QUICKSEARCHBOX_PACKGE_NAME:Ljava/lang/String;

.field private static final HIKE_PACKAGE_NAME:Ljava/lang/String;

.field private static final HOLO_PACKAGE_NAME:Ljava/lang/String;

.field private static final ICQ_PACKAGE_NAME:Ljava/lang/String;

.field private static final KAKAOTALK_PACKAGE_NAME:Ljava/lang/String;

.field private static final KAKAOTALK_SETTINGS_THEME_URI:Ljava/lang/String; = "kakaotalk://settings/theme/"

.field private static final KIK_PACKAGE_NAME:Ljava/lang/String;

.field private static final LINE_PACKAGE_NAME:Ljava/lang/String;

.field public static final MAX_DUALAPP_ID:I = 0x63

.field private static final MICROSOFT_PACKAGE_NAME:Ljava/lang/String;

.field public static final MIN_DUALAPP_ID:I = 0x5f

.field private static final NOUGAT_PACKAGE_NAME:Ljava/lang/String;

.field private static final NOVA_PACKAGE_NAME:Ljava/lang/String;

.field private static final QQMOBILECHINA_PACKAGE_NAME:Ljava/lang/String;

.field private static final QQMOBILEINTERNATIONAL_PACKAGE_NAME:Ljava/lang/String;

.field private static final SAMSUNG_LAUNCHER_APPS:[Ljava/lang/String;

.field private static final SEC_DESKTOP_LAUNCHER_PACKGE_NAME:Ljava/lang/String;

.field private static final SEC_EASY_LAUNCHER_PACKGE_NAME:Ljava/lang/String;

.field private static final SEC_EMERGENCY_LAUNCHER_PACKGE_NAME:Ljava/lang/String;

.field private static final SEC_LAUNCHER_PACKGE_NAME:Ljava/lang/String;

.field private static final SEC_PRODUCT_FEATURE_KNOX_SUPPORT_DUAL_APP:Z = true

.field private static final SKYPE_PACKAGE_NAME:Ljava/lang/String;

.field private static final SMART3_PACKAGE_NAME:Ljava/lang/String;

.field private static final SNAPCHAT_PACKAGE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "SemDualAppManager"

.field private static final TELEGRAM_PACKAGE_NAME:Ljava/lang/String;

.field private static final VIBER_PACKAGE_NAME:Ljava/lang/String;

.field private static final WECHAT_PACKAGE_NAME:Ljava/lang/String;

.field private static final WEIBO_PACKAGE_NAME:Ljava/lang/String;

.field private static final WHATSAPP_PACKAGE_NAME:Ljava/lang/String;

.field private static final YAHOOMESSENGER_PACKAGE_NAME:Ljava/lang/String;

.field private static final YANDEX_PACKAGE_NAME:Ljava/lang/String;

.field private static final ZALO_PACKAGE_NAME:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mIsChinaModel:Z

.field private static mSalesCode:Ljava/lang/String;

.field private static mService:Lcom/samsung/android/app/ISemDualAppManager;

.field private static sDAInstance:Lcom/samsung/android/app/SemDualAppManager;


# instance fields
.field private mDuplicateInitialIntents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sfgetmContext()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 46

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->sDAInstance:Lcom/samsung/android/app/SemDualAppManager;

    .line 64
    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->mService:Lcom/samsung/android/app/ISemDualAppManager;

    .line 103
    const-string v0, "Y29tLmZhY2Vib29rLmthdGFuYQ=="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->FACEBOOK_PACKAGE_NAME:Ljava/lang/String;

    .line 105
    const-string v0, "Y29tLndoYXRzYXBw"

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->WHATSAPP_PACKAGE_NAME:Ljava/lang/String;

    .line 107
    const-string v0, "Y29tLmZhY2Vib29rLm9yY2E="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->FACEBOOKMESSENGER_PACKAGE_NAME:Ljava/lang/String;

    .line 109
    const-string v0, "Y29tLnRlbmNlbnQubW9iaWxlcXE="

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->QQMOBILECHINA_PACKAGE_NAME:Ljava/lang/String;

    .line 111
    const-string v5, "Y29tLnRlbmNlbnQubW9iaWxlcXFp"

    invoke-static {v5}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    sput-object v6, Lcom/samsung/android/app/SemDualAppManager;->QQMOBILEINTERNATIONAL_PACKAGE_NAME:Ljava/lang/String;

    .line 113
    const-string v6, "Y29tLnRlbmNlbnQubW0="

    invoke-static {v6}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    sput-object v7, Lcom/samsung/android/app/SemDualAppManager;->WECHAT_PACKAGE_NAME:Ljava/lang/String;

    .line 115
    const-string v8, "Y29tLnNreXBlLnJhaWRlcg=="

    invoke-static {v8}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    sput-object v9, Lcom/samsung/android/app/SemDualAppManager;->SKYPE_PACKAGE_NAME:Ljava/lang/String;

    .line 117
    const-string v9, "Y29tLnZpYmVyLnZvaXA="

    invoke-static {v9}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    sput-object v10, Lcom/samsung/android/app/SemDualAppManager;->VIBER_PACKAGE_NAME:Ljava/lang/String;

    .line 119
    const-string v10, "anAubmF2ZXIubGluZS5hbmRyb2lk"

    invoke-static {v10}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    sput-object v11, Lcom/samsung/android/app/SemDualAppManager;->LINE_PACKAGE_NAME:Ljava/lang/String;

    .line 121
    const-string v11, "Y29tLmJibQ=="

    invoke-static {v11}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object v11, v12

    sput-object v12, Lcom/samsung/android/app/SemDualAppManager;->BLACKBERRYMESSENGER_PACKAGE_NAME:Ljava/lang/String;

    .line 123
    const-string v12, "b3JnLnRlbGVncmFtLm1lc3Nlbmdlcg=="

    invoke-static {v12}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object v12, v13

    sput-object v13, Lcom/samsung/android/app/SemDualAppManager;->TELEGRAM_PACKAGE_NAME:Ljava/lang/String;

    .line 125
    const-string v13, "Y29tLmtha2FvLnRhbGs="

    invoke-static {v13}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v13, v14

    sput-object v14, Lcom/samsung/android/app/SemDualAppManager;->KAKAOTALK_PACKAGE_NAME:Ljava/lang/String;

    .line 127
    const-string v14, "Y29tLmJzYi5oaWtl"

    invoke-static {v14}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v14, v15

    sput-object v15, Lcom/samsung/android/app/SemDualAppManager;->HIKE_PACKAGE_NAME:Ljava/lang/String;

    .line 129
    const-string v15, "Y29tLmljcS5tb2JpbGUuY2xpZW50"

    invoke-static {v15}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v15, v16

    sput-object v16, Lcom/samsung/android/app/SemDualAppManager;->ICQ_PACKAGE_NAME:Ljava/lang/String;

    .line 131
    const-string v16, "Y29tLnlhaG9vLm1vYmlsZS5jbGllbnQuYW5kcm9pZC5pbQ=="

    invoke-static/range {v16 .. v16}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v16, v17

    sput-object v17, Lcom/samsung/android/app/SemDualAppManager;->YAHOOMESSENGER_PACKAGE_NAME:Ljava/lang/String;

    .line 133
    const-string v17, "Y29tLnppbmcuemFsbw=="

    invoke-static/range {v17 .. v17}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v17, v18

    sput-object v18, Lcom/samsung/android/app/SemDualAppManager;->ZALO_PACKAGE_NAME:Ljava/lang/String;

    .line 135
    const-string v18, "Y29tLnNuYXBjaGF0LmFuZHJvaWQ="

    invoke-static/range {v18 .. v18}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v18, v19

    sput-object v19, Lcom/samsung/android/app/SemDualAppManager;->SNAPCHAT_PACKAGE_NAME:Ljava/lang/String;

    .line 137
    const-string v19, "Y29tLnNpbmEud2VpYm8="

    move-object/from16 v20, v0

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v21, v7

    move-object v7, v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->WEIBO_PACKAGE_NAME:Ljava/lang/String;

    .line 139
    const-string v19, "a2lrLmFuZHJvaWQ="

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v19, v22

    sput-object v22, Lcom/samsung/android/app/SemDualAppManager;->KIK_PACKAGE_NAME:Ljava/lang/String;

    .line 141
    const-string v22, "Y29tLnNlYy5hbmRyb2lkLmFwcC5sYXVuY2hlcg=="

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->SEC_LAUNCHER_PACKGE_NAME:Ljava/lang/String;

    .line 143
    const-string v22, "Y29tLnNlYy5hbmRyb2lkLmFwcC5lYXN5bGF1bmNoZXI="

    move-object/from16 v37, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->SEC_EASY_LAUNCHER_PACKGE_NAME:Ljava/lang/String;

    .line 145
    const-string v22, "Y29tLnNlYy5hbmRyb2lkLmVtZXJnZW5jeWxhdW5jaGVy"

    move-object/from16 v38, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->SEC_EMERGENCY_LAUNCHER_PACKGE_NAME:Ljava/lang/String;

    .line 147
    const-string v22, "Y29tLnNlYy5hbmRyb2lkLmFwcC5kZXNrdG9wbGF1bmNoZXI="

    move-object/from16 v39, v0

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->SEC_DESKTOP_LAUNCHER_PACKGE_NAME:Ljava/lang/String;

    .line 149
    const-string v22, "Y29tLmdvb2dsZS5hbmRyb2lkLmdvb2dsZXF1aWNrc2VhcmNoYm94"

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    sput-object v27, Lcom/samsung/android/app/SemDualAppManager;->GOOGLE_QUICKSEARCHBOX_PACKGE_NAME:Ljava/lang/String;

    .line 151
    const-string v22, "Y29tLnRlc2xhY29pbHN3LmxhdW5jaGVy"

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    sput-object v28, Lcom/samsung/android/app/SemDualAppManager;->NOVA_PACKAGE_NAME:Ljava/lang/String;

    .line 153
    const-string v22, "Y29tLm1pY3Jvc29mdC5sYXVuY2hlcg=="

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    sput-object v35, Lcom/samsung/android/app/SemDualAppManager;->MICROSOFT_PACKAGE_NAME:Ljava/lang/String;

    .line 155
    const-string v22, "b3JnLmFkdy5sYXVuY2hlcg=="

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    sput-object v36, Lcom/samsung/android/app/SemDualAppManager;->ADW_PACKAGE_NAME:Ljava/lang/String;

    .line 157
    const-string v22, "Y29tLmFjdGlvbmxhdW5jaGVyLnBsYXlzdG9yZQ=="

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    sput-object v29, Lcom/samsung/android/app/SemDualAppManager;->ACTION3_PACKAGE_NAME:Ljava/lang/String;

    .line 159
    const-string v22, "Y29tLm1vYmludC5ob2xvbGF1bmNoZXI="

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    sput-object v30, Lcom/samsung/android/app/SemDualAppManager;->HOLO_PACKAGE_NAME:Ljava/lang/String;

    .line 161
    const-string v22, "Z2lubGVtb24uZmxvd2VyZnJlZQ=="

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    sput-object v31, Lcom/samsung/android/app/SemDualAppManager;->SMART3_PACKAGE_NAME:Ljava/lang/String;

    .line 163
    const-string v22, "Y29tLmNtbmxhdW5jaGVy"

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    sput-object v32, Lcom/samsung/android/app/SemDualAppManager;->NOUGAT_PACKAGE_NAME:Ljava/lang/String;

    .line 165
    const-string v22, "Y29tLnlhbmRleC5sYXVuY2hlcg=="

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    sput-object v33, Lcom/samsung/android/app/SemDualAppManager;->YANDEX_PACKAGE_NAME:Ljava/lang/String;

    .line 167
    const-string v22, "Y29tLm50dGRvY29tby5hbmRyb2lkLmRob21l"

    invoke-static/range {v22 .. v22}, Lcom/samsung/android/app/SemDualAppManager;->decodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    sput-object v34, Lcom/samsung/android/app/SemDualAppManager;->DCM_LIVEUX_PACKAGE_NAME:Ljava/lang/String;

    .line 173
    invoke-static {}, Landroid/os/SemSystemProperties;->getSalesCode()Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/samsung/android/app/SemDualAppManager;->mSalesCode:Ljava/lang/String;

    .line 175
    const-string v40, "CHN"

    const-string v41, "CHM"

    const-string v42, "CBK"

    const-string v43, "CTC"

    const-string v44, "CHU"

    const-string v45, "CHC"

    filled-new-array/range {v40 .. v45}, [Ljava/lang/String;

    move-result-object v22

    sput-object v22, Lcom/samsung/android/app/SemDualAppManager;->CHINA_SALES_CODES:[Ljava/lang/String;

    .line 179
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->isChinaModel()Z

    move-result v22

    sput-boolean v22, Lcom/samsung/android/app/SemDualAppManager;->mIsChinaModel:Z

    .line 182
    filled-new-array/range {v1 .. v19}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/app/SemDualAppManager;->DUAL_APP_WHITELIST_PACKAGES:[Ljava/lang/String;

    .line 191
    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v23

    filled-new-array {v2, v1, v3}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/app/SemDualAppManager;->DUAL_APP_WHITELIST_PACKAGES_FOR_CHINA:[Ljava/lang/String;

    .line 195
    move-object/from16 v23, v37

    move-object/from16 v24, v38

    move-object/from16 v25, v39

    move-object/from16 v26, v0

    filled-new-array/range {v23 .. v36}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/app/SemDualAppManager;->AFW_CAPABLE_LAUNCHER_APPS:[Ljava/lang/String;

    .line 200
    move-object/from16 v1, v37

    move-object/from16 v2, v38

    move-object/from16 v3, v39

    filled-new-array {v1, v2, v3, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->SAMSUNG_LAUNCHER_APPS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/SemDualAppManager;->mDuplicateInitialIntents:Ljava/util/Map;

    .line 206
    return-void
.end method

.method private addResolveInfoFromOtherUser(Landroid/content/pm/PackageManager;Ljava/util/List;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)V
    .registers 21
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "ai"    # Landroid/content/pm/ActivityInfo;
    .param p4, "ii"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .line 657
    .local p2, "target":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    move-object/from16 v1, p3

    move-object/from16 v8, p4

    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    move-result v9

    .line 658
    .local v9, "dualAppUserId":I
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v10

    .line 660
    .local v10, "iPackageManager":Landroid/content/pm/IPackageManager;
    if-eqz v1, :cond_92

    invoke-static {v9}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-nez v0, :cond_21

    move-object/from16 v15, p1

    move-object/from16 v2, p2

    goto/16 :goto_96

    .line 664
    :cond_21
    const/4 v0, 0x0

    .line 665
    .local v0, "userId":I
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-nez v2, :cond_2f

    .line 666
    move v0, v9

    move v11, v0

    goto :goto_30

    .line 665
    :cond_2f
    move v11, v0

    .line 669
    .end local v0    # "userId":I
    .local v11, "userId":I
    :goto_30
    const/4 v2, 0x0

    .line 670
    .local v2, "ri":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v12

    .line 673
    .local v12, "cn":Landroid/content/ComponentName;
    if-eqz v12, :cond_4d

    .line 674
    const-wide/16 v3, 0x0

    :try_start_39
    invoke-interface {v10, v12, v3, v4, v11}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v0
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3d} :catch_49

    move-object v1, v0

    .line 675
    .end local p3    # "ai":Landroid/content/pm/ActivityInfo;
    .local v1, "ai":Landroid/content/pm/ActivityInfo;
    :try_start_3e
    new-instance v0, Landroid/content/pm/ResolveInfo;

    invoke-direct {v0}, Landroid/content/pm/ResolveInfo;-><init>()V

    move-object v2, v0

    .line 676
    iput-object v1, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_46} :catch_47

    goto :goto_4d

    .line 678
    :catch_47
    move-exception v0

    goto :goto_4a

    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local p3    # "ai":Landroid/content/pm/ActivityInfo;
    :catch_49
    move-exception v0

    .end local p3    # "ai":Landroid/content/pm/ActivityInfo;
    .restart local v1    # "ai":Landroid/content/pm/ActivityInfo;
    :goto_4a
    move-object v0, v1

    move-object v13, v2

    goto :goto_4f

    .line 679
    :cond_4d
    :goto_4d
    move-object v0, v1

    move-object v13, v2

    .line 681
    .end local v1    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v2    # "ri":Landroid/content/pm/ResolveInfo;
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    .local v13, "ri":Landroid/content/pm/ResolveInfo;
    :goto_4f
    instance-of v1, v8, Landroid/content/pm/LabeledIntent;

    if-eqz v1, :cond_72

    .line 682
    move-object v1, v8

    check-cast v1, Landroid/content/pm/LabeledIntent;

    .line 683
    .local v1, "li":Landroid/content/pm/LabeledIntent;
    invoke-virtual {v1}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v13, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 684
    invoke-virtual {v1}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v2

    iput v2, v13, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 685
    invoke-virtual {v1}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v13, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 686
    invoke-virtual {v1}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v2

    iput v2, v13, Landroid/content/pm/ResolveInfo;->icon:I

    .line 687
    iget v2, v13, Landroid/content/pm/ResolveInfo;->icon:I

    iput v2, v13, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    .line 689
    .end local v1    # "li":Landroid/content/pm/LabeledIntent;
    :cond_72
    if-eqz v0, :cond_8d

    .line 690
    new-instance v14, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 691
    move-object/from16 v15, p1

    invoke-virtual {v13, v15}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, v14

    move-object/from16 v2, p4

    move-object v3, v13

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V

    .line 690
    move-object/from16 v2, p2

    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_91

    .line 689
    :cond_8d
    move-object/from16 v15, p1

    move-object/from16 v2, p2

    .line 693
    :goto_91
    return-void

    .line 660
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v11    # "userId":I
    .end local v12    # "cn":Landroid/content/ComponentName;
    .end local v13    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local p3    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_92
    move-object/from16 v15, p1

    move-object/from16 v2, p2

    .line 661
    :goto_96
    return-void
.end method

.method private static decodeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "in"    # Ljava/lang/String;

    .line 808
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 809
    .local v0, "out":[B
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public static drawDualAppBadge(Landroid/content/Context;Landroid/appwidget/AppWidgetHostView;Landroid/os/UserHandle;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/appwidget/AppWidgetHostView;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 701
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/app/SemDualAppManager$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/SemDualAppManager$1;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHostView;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 720
    return-void
.end method

.method public static getAllInstalledWhitelistedPackages()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 371
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppService()Lcom/samsung/android/app/ISemDualAppManager;

    move-result-object v0

    .line 372
    .local v0, "sdam":Lcom/samsung/android/app/ISemDualAppManager;
    const-string v1, "SemDualAppManager"

    if-eqz v0, :cond_13

    .line 374
    :try_start_8
    invoke-interface {v0}, Lcom/samsung/android/app/ISemDualAppManager;->getAllInstalledWhitelistedPackages()Ljava/util/List;

    move-result-object v1
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_c} :catch_d

    return-object v1

    .line 375
    :catch_d
    move-exception v2

    .line 376
    .local v2, "re":Landroid/os/RemoteException;
    const-string v3, "getAllInstalledWhitelistedPackages : RemoteException occured"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    .end local v2    # "re":Landroid/os/RemoteException;
    :cond_13
    const-string v2, "getAllInstalledWhitelistedPackages : Can not connect to DualAppManagerService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getAllWhitelistedPackages()[Ljava/lang/String;
    .registers 5

    .line 313
    const/4 v0, 0x0

    .line 315
    .local v0, "apps":[Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppService()Lcom/samsung/android/app/ISemDualAppManager;

    move-result-object v1

    .line 316
    .local v1, "sdam":Lcom/samsung/android/app/ISemDualAppManager;
    const-string v2, "SemDualAppManager"

    if-eqz v1, :cond_15

    .line 318
    :try_start_9
    invoke-interface {v1}, Lcom/samsung/android/app/ISemDualAppManager;->getAllWhitelistedPackages()[Ljava/lang/String;

    move-result-object v3
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_d} :catch_f

    move-object v0, v3

    .line 321
    goto :goto_15

    .line 319
    :catch_f
    move-exception v3

    .line 320
    .local v3, "re":Landroid/os/RemoteException;
    const-string v4, "getAllWhitelistedPackages : RemoteException occured"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    .end local v3    # "re":Landroid/os/RemoteException;
    :cond_15
    :goto_15
    if-nez v0, :cond_26

    .line 325
    const-string v3, "getAllWhitelistedPackages : null returned. Return default"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    sget-boolean v2, Lcom/samsung/android/app/SemDualAppManager;->mIsChinaModel:Z

    if-eqz v2, :cond_23

    .line 327
    sget-object v2, Lcom/samsung/android/app/SemDualAppManager;->DUAL_APP_WHITELIST_PACKAGES_FOR_CHINA:[Ljava/lang/String;

    return-object v2

    .line 329
    :cond_23
    sget-object v2, Lcom/samsung/android/app/SemDualAppManager;->DUAL_APP_WHITELIST_PACKAGES:[Ljava/lang/String;

    return-object v2

    .line 332
    :cond_26
    return-object v0
.end method

.method public static getDualAppProfileId()I
    .registers 3

    .line 342
    const/16 v0, -0x2710

    .line 348
    .local v0, "id":I
    const-string/jumbo v1, "sys.dualapp.profile_id"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 351
    .local v1, "value":Ljava/lang/String;
    if-eqz v1, :cond_21

    :try_start_c
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_21

    .line 352
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1a} :catch_1c

    move v0, v2

    goto :goto_21

    .line 354
    :catch_1c
    move-exception v2

    .line 355
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_22

    .line 356
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_21
    :goto_21
    nop

    .line 357
    :goto_22
    return v0
.end method

.method private static getDualAppService()Lcom/samsung/android/app/ISemDualAppManager;
    .registers 1

    .line 212
    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->mService:Lcom/samsung/android/app/ISemDualAppManager;

    if-nez v0, :cond_11

    .line 213
    nop

    .line 214
    const-string v0, "dual_app"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/ISemDualAppManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/app/ISemDualAppManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/SemDualAppManager;->mService:Lcom/samsung/android/app/ISemDualAppManager;

    .line 217
    :cond_11
    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->mService:Lcom/samsung/android/app/ISemDualAppManager;

    return-object v0
.end method

.method public static getDualAppVersion()I
    .registers 1

    .line 556
    const/16 v0, 0x154

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/app/SemDualAppManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .line 228
    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->sDAInstance:Lcom/samsung/android/app/SemDualAppManager;

    if-nez v0, :cond_19

    .line 229
    const-class v0, Lcom/samsung/android/app/SemDualAppManager;

    monitor-enter v0

    .line 230
    :try_start_7
    sget-object v1, Lcom/samsung/android/app/SemDualAppManager;->sDAInstance:Lcom/samsung/android/app/SemDualAppManager;

    if-nez v1, :cond_14

    .line 231
    new-instance v1, Lcom/samsung/android/app/SemDualAppManager;

    invoke-direct {v1}, Lcom/samsung/android/app/SemDualAppManager;-><init>()V

    sput-object v1, Lcom/samsung/android/app/SemDualAppManager;->sDAInstance:Lcom/samsung/android/app/SemDualAppManager;

    .line 232
    sput-object p0, Lcom/samsung/android/app/SemDualAppManager;->mContext:Landroid/content/Context;

    .line 234
    :cond_14
    monitor-exit v0

    goto :goto_19

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_16

    throw v1

    .line 237
    :cond_19
    :goto_19
    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->sDAInstance:Lcom/samsung/android/app/SemDualAppManager;

    return-object v0
.end method

.method public static isAfwSupportLauncher(Ljava/lang/String;)Z
    .registers 7
    .param p0, "launcherPkgName"    # Ljava/lang/String;

    .line 728
    const/4 v0, 0x0

    if-eqz p0, :cond_16

    .line 729
    sget-object v1, Lcom/samsung/android/app/SemDualAppManager;->AFW_CAPABLE_LAUNCHER_APPS:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_7
    if-ge v3, v2, :cond_16

    aget-object v4, v1, v3

    .line 730
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 731
    const/4 v0, 0x1

    return v0

    .line 729
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 735
    :cond_16
    return v0
.end method

.method public static isChinaDualApp(Ljava/lang/String;)Z
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 775
    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->QQMOBILECHINA_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->QQMOBILEINTERNATIONAL_PACKAGE_NAME:Ljava/lang/String;

    .line 776
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->WEIBO_PACKAGE_NAME:Ljava/lang/String;

    .line 777
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->WECHAT_PACKAGE_NAME:Ljava/lang/String;

    .line 778
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_23

    .line 781
    :cond_21
    const/4 v0, 0x0

    return v0

    .line 779
    :cond_23
    :goto_23
    const/4 v0, 0x1

    return v0
.end method

.method public static isChinaModel()Z
    .registers 6

    .line 797
    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->mSalesCode:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 798
    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->CHINA_SALES_CODES:[Ljava/lang/String;

    array-length v2, v0

    move v3, v1

    :goto_9
    if-ge v3, v2, :cond_1a

    aget-object v4, v0, v3

    .line 799
    .local v4, "code":Ljava/lang/String;
    sget-object v5, Lcom/samsung/android/app/SemDualAppManager;->mSalesCode:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 800
    const/4 v0, 0x1

    return v0

    .line 798
    .end local v4    # "code":Ljava/lang/String;
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 805
    :cond_1a
    return v1
.end method

.method public static isChooserRequired(Ljava/lang/String;)Z
    .registers 2
    .param p0, "clsName"    # Ljava/lang/String;

    .line 760
    const-string v0, "com.tencent.mm.plugin.base.stub.WXEntryActivity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 761
    const-string v0, "com.tencent.open.agent.AgentActivity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 762
    const-string v0, "com.tencent.mm.plugin.base.stub.WXPayEntryActivity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 763
    const-string v0, "com.sina.weibo.SSOActivity"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_23

    .line 766
    :cond_21
    const/4 v0, 0x0

    return v0

    .line 764
    :cond_23
    :goto_23
    const/4 v0, 0x1

    return v0
.end method

.method public static isDualAppId(I)Z
    .registers 2
    .param p0, "userId"    # I

    .line 299
    const/16 v0, 0x5f

    if-lt p0, v0, :cond_a

    const/16 v0, 0x63

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static isDualAppIdInternal(I)Z
    .registers 2
    .param p0, "userId"    # I

    .line 443
    const/16 v0, 0x5f

    if-lt p0, v0, :cond_a

    const/16 v0, 0x63

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static isDualAppVersionSupported(I)Z
    .registers 3
    .param p0, "dualAppVer"    # I

    .line 567
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppVersion()I

    move-result v0

    .line 569
    .local v0, "currentVersion":I
    if-lt v0, p0, :cond_8

    .line 570
    const/4 v1, 0x1

    return v1

    .line 573
    :cond_8
    const/4 v1, 0x0

    return v1
.end method

.method public static isInstalledWhitelistedPackage(Ljava/lang/String;)Z
    .registers 7
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 395
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 397
    .local v0, "currentUserId":I
    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppIdInternal(I)Z

    move-result v2

    if-nez v2, :cond_e

    .line 398
    return v1

    .line 401
    :cond_e
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppService()Lcom/samsung/android/app/ISemDualAppManager;

    move-result-object v2

    .line 402
    .local v2, "sdam":Lcom/samsung/android/app/ISemDualAppManager;
    const-string v3, "SemDualAppManager"

    if-eqz v2, :cond_22

    .line 404
    :try_start_16
    invoke-interface {v2, p0}, Lcom/samsung/android/app/ISemDualAppManager;->isInstalledWhitelistedPackage(Ljava/lang/String;)Z

    move-result v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1a} :catch_1b

    return v1

    .line 405
    :catch_1b
    move-exception v4

    .line 406
    .local v4, "re":Landroid/os/RemoteException;
    const-string/jumbo v5, "isInstalledWhitelistedPackage : RemoteException occured"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    .end local v4    # "re":Landroid/os/RemoteException;
    :cond_22
    const-string/jumbo v4, "isInstalledWhitelistedPackage : Can not connect to DualAppManagerService"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    return v1
.end method

.method private static isKakaoThemeIntent(Ljava/lang/String;Landroid/content/Intent;)Z
    .registers 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 785
    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->KAKAOTALK_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "kakaotalk://settings/theme/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 786
    const/4 v0, 0x1

    return v0

    .line 788
    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method public static isSamsungLauncher(Ljava/lang/String;)Z
    .registers 7
    .param p0, "launcherPkgName"    # Ljava/lang/String;

    .line 744
    const/4 v0, 0x0

    if-eqz p0, :cond_16

    .line 745
    sget-object v1, Lcom/samsung/android/app/SemDualAppManager;->SAMSUNG_LAUNCHER_APPS:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_7
    if-ge v3, v2, :cond_16

    aget-object v4, v1, v3

    .line 746
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 747
    const/4 v0, 0x1

    return v0

    .line 745
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 751
    :cond_16
    return v0
.end method

.method public static shouldAddUserId(Landroid/net/Uri;I)Z
    .registers 6
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "userId"    # I

    .line 456
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 457
    return v0

    .line 460
    :cond_4
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 461
    .local v1, "uriScheme":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    .line 463
    .local v2, "uriAuthority":Ljava/lang/String;
    const-string v3, "content"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 464
    return v0

    .line 468
    :cond_15
    const-string v3, "com.android.contacts"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 469
    const-string v3, "com.android.calendar"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 470
    const-string v3, "com.android.providers.downloads.documents"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    goto :goto_30

    .line 473
    :cond_2e
    const/4 v0, 0x1

    return v0

    .line 471
    :cond_30
    :goto_30
    return v0
.end method

.method public static shouldRemove(Landroid/content/pm/ResolveInfo;)Z
    .registers 3
    .param p0, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 818
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 819
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.android.chrome"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 820
    :cond_24
    const/4 v0, 0x1

    return v0

    .line 823
    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method public static updateDualAppData(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 428
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppService()Lcom/samsung/android/app/ISemDualAppManager;

    move-result-object v0

    .line 429
    .local v0, "sdam":Lcom/samsung/android/app/ISemDualAppManager;
    const-string v1, "SemDualAppManager"

    if-eqz v0, :cond_18

    .line 431
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 432
    .local v2, "pkgName":Ljava/lang/String;
    invoke-interface {v0, v2, p1, p2}, Lcom/samsung/android/app/ISemDualAppManager;->updateDualAppData(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_10} :catch_11

    return-object v1

    .line 433
    .end local v2    # "pkgName":Ljava/lang/String;
    :catch_11
    move-exception v2

    .line 434
    .local v2, "re":Landroid/os/RemoteException;
    const-string/jumbo v3, "updateDualAppData : RemoteException occured"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    .end local v2    # "re":Landroid/os/RemoteException;
    :cond_18
    const-string/jumbo v2, "updateDualAppData : Can not connect to DualAppManagerService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public addDualAppAccounts(Landroid/widget/LinearLayout;II)V
    .registers 22
    .param p1, "contents"    # Landroid/widget/LinearLayout;
    .param p2, "resId"    # I
    .param p3, "resHeight"    # I

    .line 483
    move-object/from16 v1, p1

    const-string v2, "SemDualAppManager"

    :try_start_4
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getDualAppProfileId()I

    move-result v0

    move v3, v0

    .line 484
    .local v3, "dualAppId":I
    invoke-static {v3}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-nez v0, :cond_10

    .line 485
    return-void

    .line 487
    :cond_10
    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    move-object v4, v0

    .line 488
    .local v4, "mgr":Landroid/accounts/AccountManager;
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v3}, Landroid/os/UserHandle;-><init>(I)V

    move-object v5, v0

    .line 489
    .local v5, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {v4, v3}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v0

    move-object v6, v0

    .line 490
    .local v6, "dualAppAccounts":[Landroid/accounts/Account;
    array-length v0, v6

    move v7, v0

    .line 491
    .local v7, "N":I
    if-nez v7, :cond_27

    .line 492
    return-void

    .line 494
    :cond_27
    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 495
    invoke-virtual {v0, v3}, Landroid/accounts/AccountManager;->getAuthenticatorTypesAsUser(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    move-object v8, v0

    .line 496
    .local v8, "dualAppDescs":[Landroid/accounts/AuthenticatorDescription;
    array-length v0, v8

    move v9, v0

    .line 498
    .local v9, "M":I
    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "layout_inflater"

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    move-object v10, v0

    .line 499
    .local v10, "inflater":Landroid/view/LayoutInflater;
    const/4 v0, 0x0

    move v11, v0

    .local v11, "i":I
    :goto_42
    if-ge v11, v7, :cond_132

    .line 500
    aget-object v0, v6, v11

    move-object v12, v0

    .line 501
    .local v12, "account":Landroid/accounts/Account;
    const/4 v0, 0x0

    .line 502
    .local v0, "desc":Landroid/accounts/AuthenticatorDescription;
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_49
    if-ge v13, v9, :cond_5f

    .line 503
    iget-object v14, v12, Landroid/accounts/Account;->type:Ljava/lang/String;

    aget-object v15, v8, v13

    iget-object v15, v15, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5c

    .line 504
    aget-object v14, v8, v13
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_59} :catch_139

    move-object v0, v14

    .line 505
    move-object v13, v0

    goto :goto_60

    .line 502
    :cond_5c
    add-int/lit8 v13, v13, 0x1

    goto :goto_49

    :cond_5f
    move-object v13, v0

    .line 508
    .end local v0    # "desc":Landroid/accounts/AuthenticatorDescription;
    .local v13, "desc":Landroid/accounts/AuthenticatorDescription;
    :goto_60
    if-nez v13, :cond_6a

    .line 509
    move/from16 v15, p3

    move/from16 v16, v3

    move-object/from16 v17, v4

    goto/16 :goto_128

    .line 511
    :cond_6a
    const/4 v14, 0x0

    .line 513
    .local v14, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_6b
    iget v0, v13, Landroid/accounts/AuthenticatorDescription;->iconId:I

    if-eqz v0, :cond_b5

    .line 514
    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->mContext:Landroid/content/Context;

    iget-object v15, v13, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;
    :try_end_73
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6b .. :try_end_73} :catch_d8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6b .. :try_end_73} :catch_ba
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_73} :catch_139

    move/from16 v16, v3

    const/4 v3, 0x0

    .end local v3    # "dualAppId":I
    .local v16, "dualAppId":I
    :try_start_76
    invoke-virtual {v0, v15, v3, v5}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 517
    .local v0, "authContext":Landroid/content/Context;
    sget-object v3, Lcom/samsung/android/app/SemDualAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 518
    .local v3, "pm":Landroid/content/pm/PackageManager;
    iget-object v15, v13, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v15}, Landroid/content/pm/PackageManager;->semShouldPackIntoIconTray(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_9b

    .line 519
    iget v15, v13, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v0, v15}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15
    :try_end_8e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_76 .. :try_end_8e} :catch_b1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_76 .. :try_end_8e} :catch_ad
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_8e} :catch_139

    move-object/from16 v17, v4

    .end local v4    # "mgr":Landroid/accounts/AccountManager;
    .local v17, "mgr":Landroid/accounts/AccountManager;
    const/4 v4, 0x1

    :try_start_91
    invoke-virtual {v3, v15, v4}, Landroid/content/pm/PackageManager;->semGetDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v14, v4

    .end local v14    # "icon":Landroid/graphics/drawable/Drawable;
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_b9

    .line 522
    .end local v17    # "mgr":Landroid/accounts/AccountManager;
    .local v4, "mgr":Landroid/accounts/AccountManager;
    .restart local v14    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_9b
    move-object/from16 v17, v4

    .end local v4    # "mgr":Landroid/accounts/AccountManager;
    .restart local v17    # "mgr":Landroid/accounts/AccountManager;
    iget v4, v13, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v4
    :try_end_a7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_91 .. :try_end_a7} :catch_ab
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_91 .. :try_end_a7} :catch_a9
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_a7} :catch_139

    move-object v14, v4

    .end local v14    # "icon":Landroid/graphics/drawable/Drawable;
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_b9

    .line 527
    .end local v0    # "authContext":Landroid/content/Context;
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v14    # "icon":Landroid/graphics/drawable/Drawable;
    :catch_a9
    move-exception v0

    goto :goto_bf

    .line 525
    :catch_ab
    move-exception v0

    goto :goto_dd

    .line 527
    .end local v17    # "mgr":Landroid/accounts/AccountManager;
    .local v4, "mgr":Landroid/accounts/AccountManager;
    :catch_ad
    move-exception v0

    move-object/from16 v17, v4

    .end local v4    # "mgr":Landroid/accounts/AccountManager;
    .restart local v17    # "mgr":Landroid/accounts/AccountManager;
    goto :goto_bf

    .line 525
    .end local v17    # "mgr":Landroid/accounts/AccountManager;
    .restart local v4    # "mgr":Landroid/accounts/AccountManager;
    :catch_b1
    move-exception v0

    move-object/from16 v17, v4

    .end local v4    # "mgr":Landroid/accounts/AccountManager;
    .restart local v17    # "mgr":Landroid/accounts/AccountManager;
    goto :goto_dd

    .line 513
    .end local v16    # "dualAppId":I
    .end local v17    # "mgr":Landroid/accounts/AccountManager;
    .local v3, "dualAppId":I
    .restart local v4    # "mgr":Landroid/accounts/AccountManager;
    :cond_b5
    move/from16 v16, v3

    move-object/from16 v17, v4

    .line 529
    .end local v3    # "dualAppId":I
    .end local v4    # "mgr":Landroid/accounts/AccountManager;
    .restart local v16    # "dualAppId":I
    .restart local v17    # "mgr":Landroid/accounts/AccountManager;
    :goto_b9
    goto :goto_f6

    .line 527
    .end local v16    # "dualAppId":I
    .end local v17    # "mgr":Landroid/accounts/AccountManager;
    .restart local v3    # "dualAppId":I
    .restart local v4    # "mgr":Landroid/accounts/AccountManager;
    :catch_ba
    move-exception v0

    move/from16 v16, v3

    move-object/from16 v17, v4

    .line 528
    .end local v3    # "dualAppId":I
    .end local v4    # "mgr":Landroid/accounts/AccountManager;
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v16    # "dualAppId":I
    .restart local v17    # "mgr":Landroid/accounts/AccountManager;
    :goto_bf
    :try_start_bf
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid icon id for account type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v13, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_f6

    .line 525
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v16    # "dualAppId":I
    .end local v17    # "mgr":Landroid/accounts/AccountManager;
    .restart local v3    # "dualAppId":I
    .restart local v4    # "mgr":Landroid/accounts/AccountManager;
    :catch_d8
    move-exception v0

    move/from16 v16, v3

    move-object/from16 v17, v4

    .line 526
    .end local v3    # "dualAppId":I
    .end local v4    # "mgr":Landroid/accounts/AccountManager;
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v16    # "dualAppId":I
    .restart local v17    # "mgr":Landroid/accounts/AccountManager;
    :goto_dd
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad package name for account type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v13, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    nop

    .line 530
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_f6
    if-nez v14, :cond_103

    .line 531
    sget-object v0, Lcom/samsung/android/app/SemDualAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v14, v0

    .line 533
    :cond_103
    move/from16 v3, p2

    const/4 v4, 0x0

    invoke-virtual {v10, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 534
    .local v0, "child":Landroid/widget/TextView;
    iget-object v4, v12, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 535
    sget-object v4, Lcom/samsung/android/app/SemDualAppManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_117} :catch_139

    move/from16 v15, p3

    :try_start_119
    invoke-virtual {v4, v15}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 536
    .local v4, "height":I
    const/4 v3, 0x0

    invoke-virtual {v14, v3, v3, v4, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 537
    const/4 v3, 0x0

    invoke-virtual {v0, v14, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 538
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_119 .. :try_end_128} :catch_130

    .line 499
    .end local v0    # "child":Landroid/widget/TextView;
    .end local v4    # "height":I
    .end local v12    # "account":Landroid/accounts/Account;
    .end local v13    # "desc":Landroid/accounts/AuthenticatorDescription;
    .end local v14    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_128
    add-int/lit8 v11, v11, 0x1

    move/from16 v3, v16

    move-object/from16 v4, v17

    goto/16 :goto_42

    .line 540
    .end local v5    # "userHandle":Landroid/os/UserHandle;
    .end local v6    # "dualAppAccounts":[Landroid/accounts/Account;
    .end local v7    # "N":I
    .end local v8    # "dualAppDescs":[Landroid/accounts/AuthenticatorDescription;
    .end local v9    # "M":I
    .end local v10    # "inflater":Landroid/view/LayoutInflater;
    .end local v11    # "i":I
    .end local v16    # "dualAppId":I
    .end local v17    # "mgr":Landroid/accounts/AccountManager;
    :catch_130
    move-exception v0

    goto :goto_13c

    .line 499
    .restart local v3    # "dualAppId":I
    .local v4, "mgr":Landroid/accounts/AccountManager;
    .restart local v5    # "userHandle":Landroid/os/UserHandle;
    .restart local v6    # "dualAppAccounts":[Landroid/accounts/Account;
    .restart local v7    # "N":I
    .restart local v8    # "dualAppDescs":[Landroid/accounts/AuthenticatorDescription;
    .restart local v9    # "M":I
    .restart local v10    # "inflater":Landroid/view/LayoutInflater;
    .restart local v11    # "i":I
    :cond_132
    move/from16 v15, p3

    move/from16 v16, v3

    move-object/from16 v17, v4

    .line 542
    .end local v3    # "dualAppId":I
    .end local v4    # "mgr":Landroid/accounts/AccountManager;
    .end local v5    # "userHandle":Landroid/os/UserHandle;
    .end local v6    # "dualAppAccounts":[Landroid/accounts/Account;
    .end local v7    # "N":I
    .end local v8    # "dualAppDescs":[Landroid/accounts/AuthenticatorDescription;
    .end local v9    # "M":I
    .end local v10    # "inflater":Landroid/view/LayoutInflater;
    .end local v11    # "i":I
    goto :goto_152

    .line 540
    :catch_139
    move-exception v0

    move/from16 v15, p3

    .line 541
    .local v0, "e":Ljava/lang/Exception;
    :goto_13c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in addDualAppAccounts "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_152
    return-void
.end method

.method public clearDuplicateMaps()V
    .registers 2

    .line 647
    iget-object v0, p0, Lcom/samsung/android/app/SemDualAppManager;->mDuplicateInitialIntents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 648
    return-void
.end method

.method public isDuplicateEntry(Landroid/content/pm/PackageManager;Ljava/util/List;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Z
    .registers 10
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "ai"    # Landroid/content/pm/ActivityInfo;
    .param p4, "ii"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/List<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/Intent;",
            ")Z"
        }
    .end annotation

    .line 616
    .local p2, "target":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/app/chooser/DisplayResolveInfo;>;"
    const/4 v0, 0x0

    if-eqz p3, :cond_99

    .line 617
    iget-object v1, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 618
    .local v1, "appUserId":I
    if-eqz v1, :cond_13

    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppIdInternal(I)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 619
    :cond_13
    instance-of v2, p4, Landroid/content/pm/LabeledIntent;

    if-eqz v2, :cond_20

    iget-object v2, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isInstalledWhitelistedPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 620
    return v0

    .line 621
    :cond_20
    iget-object v2, p0, Lcom/samsung/android/app/SemDualAppManager;->mDuplicateInitialIntents:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 622
    const/4 v0, 0x1

    return v0

    .line 623
    :cond_2e
    iget-object v2, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isInstalledWhitelistedPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 625
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_89

    .line 626
    invoke-virtual {p4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_89

    .line 627
    invoke-virtual {p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_62

    .line 628
    invoke-virtual {p4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isChooserRequired(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_89

    :cond_62
    iget-object v2, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 629
    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isChinaDualApp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_89

    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_81

    .line 630
    invoke-virtual {p4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mqqapi"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_89

    :cond_81
    iget-object v2, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 631
    invoke-static {v2, p4}, Lcom/samsung/android/app/SemDualAppManager;->isKakaoThemeIntent(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 632
    :cond_89
    iget-object v2, p0, Lcom/samsung/android/app/SemDualAppManager;->mDuplicateInitialIntents:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/SemDualAppManager;->addResolveInfoFromOtherUser(Landroid/content/pm/PackageManager;Ljava/util/List;Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)V

    .line 638
    .end local v1    # "appUserId":I
    :cond_99
    return v0
.end method

.method public isNeedAddResolveInfoForOtherUser(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;)Z
    .registers 7
    .param p1, "ai"    # Landroid/content/pm/ActivityInfo;
    .param p2, "ii"    # Landroid/content/Intent;

    .line 583
    const/4 v0, 0x0

    if-eqz p1, :cond_af

    .line 584
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 585
    .local v1, "appUserId":I
    if-eqz v1, :cond_13

    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppIdInternal(I)Z

    move-result v2

    if-eqz v2, :cond_af

    .line 586
    :cond_13
    instance-of v2, p2, Landroid/content/pm/LabeledIntent;

    if-eqz v2, :cond_20

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isInstalledWhitelistedPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 587
    return v0

    .line 588
    :cond_20
    iget-object v2, p0, Lcom/samsung/android/app/SemDualAppManager;->mDuplicateInitialIntents:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 589
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate activity found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemDualAppManager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    return v0

    .line 591
    :cond_45
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isInstalledWhitelistedPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_af

    .line 593
    const-string v2, "android.intent.action.SEND"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a0

    .line 594
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a0

    .line 595
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_79

    .line 596
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isChooserRequired(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a0

    :cond_79
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 597
    invoke-static {v2}, Lcom/samsung/android/app/SemDualAppManager;->isChinaDualApp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_98

    .line 598
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mqqapi"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a0

    :cond_98
    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 599
    invoke-static {v2, p2}, Lcom/samsung/android/app/SemDualAppManager;->isKakaoThemeIntent(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_af

    .line 600
    :cond_a0
    iget-object v0, p0, Lcom/samsung/android/app/SemDualAppManager;->mDuplicateInitialIntents:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    const/4 v0, 0x1

    return v0

    .line 606
    .end local v1    # "appUserId":I
    :cond_af
    return v0
.end method

.method public isSupported()Z
    .registers 3

    .line 280
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 281
    .local v0, "currentUserId":I
    if-eqz v0, :cond_f

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppIdInternal(I)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_f

    .line 285
    .end local v0    # "currentUserId":I
    :cond_d
    const/4 v0, 0x0

    return v0

    .line 282
    .restart local v0    # "currentUserId":I
    :cond_f
    :goto_f
    const/4 v1, 0x1

    return v1
.end method

.method public isWhitelistedPackage(Ljava/lang/String;)Z
    .registers 9
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 251
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 253
    .local v0, "currentUserId":I
    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-static {v0}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppIdInternal(I)Z

    move-result v2

    if-nez v2, :cond_e

    .line 254
    return v1

    .line 257
    :cond_e
    if-eqz p1, :cond_31

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_31

    .line 261
    :cond_19
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->getAllWhitelistedPackages()[Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "apps":[Ljava/lang/String;
    if-eqz v2, :cond_30

    .line 263
    array-length v3, v2

    move v4, v1

    :goto_21
    if-ge v4, v3, :cond_30

    aget-object v5, v2, v4

    .line 264
    .local v5, "pkg":Ljava/lang/String;
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 265
    const/4 v1, 0x1

    return v1

    .line 263
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 270
    :cond_30
    return v1

    .line 258
    .end local v2    # "apps":[Ljava/lang/String;
    :cond_31
    :goto_31
    return v1
.end method

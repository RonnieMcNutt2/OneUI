.class public final Landroid/service/autofill/AutofillServiceInfo;
.super Ljava/lang/Object;
.source "AutofillServiceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/AutofillServiceInfo$TestDataBuilder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AutofillServiceInfo"

.field private static final TAG_AUTOFILL_SERVICE:Ljava/lang/String; = "autofill-service"

.field private static final TAG_COMPATIBILITY_PACKAGE:Ljava/lang/String; = "compatibility-package"


# instance fields
.field private final mCompatibilityPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mInlineSuggestionsEnabled:Z

.field private final mPasswordsActivity:Ljava/lang/String;

.field private final mServiceInfo:Landroid/content/pm/ServiceInfo;

.field private final mSettingsActivity:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "comp"    # Landroid/content/ComponentName;
    .param p3, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 96
    invoke-static {p2, p3}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfoOrThrow(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/service/autofill/AutofillServiceInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)V
    .registers 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "si"    # Landroid/content/pm/ServiceInfo;

    .line 99
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iget-object v0, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v3, "android.permission.BIND_AUTOFILL_SERVICE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "AutofillServiceInfo"

    if-nez v0, :cond_83

    .line 102
    iget-object v0, v2, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v5, "android.permission.BIND_AUTOFILL"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v6, "AutofillService from \'"

    if-eqz v0, :cond_5b

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\' uses unsupported permission "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ". It works for now, but might not be supported on future releases"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    new-instance v3, Landroid/metrics/LogMaker;

    const/16 v5, 0x509

    invoke-direct {v3, v5}, Landroid/metrics/LogMaker;-><init>(I)V

    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 108
    invoke-virtual {v3, v5}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v3

    .line 107
    invoke-virtual {v0, v3}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    goto :goto_83

    .line 110
    :cond_5b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\' does not require permission "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v0, Ljava/lang/SecurityException;

    const-string v3, "Service does not require permission android.permission.BIND_AUTOFILL_SERVICE"

    invoke-direct {v0, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 118
    :cond_83
    :goto_83
    iput-object v2, v1, Landroid/service/autofill/AutofillServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 121
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.autofill"

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 123
    .local v3, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v0, 0x0

    if-nez v3, :cond_9c

    .line 124
    const/4 v4, 0x0

    iput-object v4, v1, Landroid/service/autofill/AutofillServiceInfo;->mSettingsActivity:Ljava/lang/String;

    .line 125
    iput-object v4, v1, Landroid/service/autofill/AutofillServiceInfo;->mPasswordsActivity:Ljava/lang/String;

    .line 126
    iput-object v4, v1, Landroid/service/autofill/AutofillServiceInfo;->mCompatibilityPackages:Landroid/util/ArrayMap;

    .line 127
    iput-boolean v0, v1, Landroid/service/autofill/AutofillServiceInfo;->mInlineSuggestionsEnabled:Z

    .line 128
    return-void

    .line 131
    :cond_9c
    const/4 v5, 0x0

    .line 132
    .local v5, "settingsActivity":Ljava/lang/String;
    const/4 v6, 0x0

    .line 133
    .local v6, "passwordsActivity":Ljava/lang/String;
    const/4 v7, 0x0

    .line 134
    .local v7, "compatibilityPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v8, 0x0

    .line 137
    .local v8, "inlineSuggestionsEnabled":Z
    :try_start_a0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    iget-object v10, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v9

    .line 140
    .local v9, "resources":Landroid/content/res/Resources;
    const/4 v10, 0x0

    .line 141
    .local v10, "type":I
    :goto_ab
    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v10, v12, :cond_b7

    if-eq v10, v11, :cond_b7

    .line 142
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    move v10, v11

    goto :goto_ab

    .line 145
    :cond_b7
    const-string v13, "autofill-service"

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f1

    .line 146
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v13
    :try_end_c7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a0 .. :try_end_c7} :catch_f7
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_c7} :catch_f7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a0 .. :try_end_c7} :catch_f7

    .line 147
    .local v13, "allAttributes":Landroid/util/AttributeSet;
    const/4 v14, 0x0

    .line 149
    .local v14, "afsAttributes":Landroid/content/res/TypedArray;
    :try_start_c8
    sget-object v15, Lcom/android/internal/R$styleable;->AutofillService:[I

    invoke-virtual {v9, v13, v15}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v15

    move-object v14, v15

    .line 151
    invoke-virtual {v14, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object v5, v15

    .line 153
    invoke-virtual {v14, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    move-object v6, v11

    .line 155
    invoke-virtual {v14, v12, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0
    :try_end_dd
    .catchall {:try_start_c8 .. :try_end_dd} :catchall_e9

    move v8, v0

    .line 158
    if-eqz v14, :cond_e3

    .line 159
    :try_start_e0
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 162
    :cond_e3
    invoke-direct {v1, v3, v9}, Landroid/service/autofill/AutofillServiceInfo;->parseCompatibilityPackages(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/util/ArrayMap;

    move-result-object v0

    move-object v7, v0

    .line 163
    .end local v13    # "allAttributes":Landroid/util/AttributeSet;
    .end local v14    # "afsAttributes":Landroid/content/res/TypedArray;
    goto :goto_f6

    .line 158
    .restart local v13    # "allAttributes":Landroid/util/AttributeSet;
    .restart local v14    # "afsAttributes":Landroid/content/res/TypedArray;
    :catchall_e9
    move-exception v0

    if-eqz v14, :cond_ef

    .line 159
    invoke-virtual {v14}, Landroid/content/res/TypedArray;->recycle()V

    .line 161
    :cond_ef
    nop

    .end local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v5    # "settingsActivity":Ljava/lang/String;
    .end local v6    # "passwordsActivity":Ljava/lang/String;
    .end local v7    # "compatibilityPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v8    # "inlineSuggestionsEnabled":Z
    .end local p0    # "this":Landroid/service/autofill/AutofillServiceInfo;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "si":Landroid/content/pm/ServiceInfo;
    throw v0

    .line 164
    .end local v13    # "allAttributes":Landroid/util/AttributeSet;
    .end local v14    # "afsAttributes":Landroid/content/res/TypedArray;
    .restart local v3    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v5    # "settingsActivity":Ljava/lang/String;
    .restart local v6    # "passwordsActivity":Ljava/lang/String;
    .restart local v7    # "compatibilityPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v8    # "inlineSuggestionsEnabled":Z
    .restart local p0    # "this":Landroid/service/autofill/AutofillServiceInfo;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "si":Landroid/content/pm/ServiceInfo;
    :cond_f1
    const-string v0, "Meta-data does not start with autofill-service tag"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e0 .. :try_end_f6} :catch_f7
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_f6} :catch_f7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e0 .. :try_end_f6} :catch_f7

    .line 168
    .end local v9    # "resources":Landroid/content/res/Resources;
    .end local v10    # "type":I
    :goto_f6
    goto :goto_fd

    .line 166
    :catch_f7
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    const-string v9, "Error parsing auto fill service meta-data"

    invoke-static {v4, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_fd
    iput-object v5, v1, Landroid/service/autofill/AutofillServiceInfo;->mSettingsActivity:Ljava/lang/String;

    .line 171
    iput-object v6, v1, Landroid/service/autofill/AutofillServiceInfo;->mPasswordsActivity:Ljava/lang/String;

    .line 172
    iput-object v7, v1, Landroid/service/autofill/AutofillServiceInfo;->mCompatibilityPackages:Landroid/util/ArrayMap;

    .line 173
    iput-boolean v8, v1, Landroid/service/autofill/AutofillServiceInfo;->mInlineSuggestionsEnabled:Z

    .line 174
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "passwordsActivity"    # Ljava/lang/String;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    new-instance v0, Landroid/content/pm/ServiceInfo;

    invoke-direct {v0}, Landroid/content/pm/ServiceInfo;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/AutofillServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 243
    new-instance v1, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v1}, Landroid/content/pm/ApplicationInfo;-><init>()V

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 244
    const-string v1, "com.android.test"

    iput-object v1, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/autofill/AutofillServiceInfo;->mSettingsActivity:Ljava/lang/String;

    .line 246
    iput-object p1, p0, Landroid/service/autofill/AutofillServiceInfo;->mPasswordsActivity:Ljava/lang/String;

    .line 247
    iput-object v0, p0, Landroid/service/autofill/AutofillServiceInfo;->mCompatibilityPackages:Landroid/util/ArrayMap;

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/autofill/AutofillServiceInfo;->mInlineSuggestionsEnabled:Z

    .line 249
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/service/autofill/AutofillServiceInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/autofill/AutofillServiceInfo;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static getAvailableServices(Landroid/content/Context;I)Ljava/util/List;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Landroid/service/autofill/AutofillServiceInfo;",
            ">;"
        }
    .end annotation

    .line 300
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/AutofillServiceInfo;>;"
    nop

    .line 303
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.service.autofill.AutofillService"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 307
    .local v1, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_56

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 308
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 310
    .local v4, "serviceInfo":Landroid/content/pm/ServiceInfo;
    :try_start_29
    new-instance v5, Landroid/service/autofill/AutofillServiceInfo;

    invoke-direct {v5, p0, v4}, Landroid/service/autofill/AutofillServiceInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/lang/SecurityException; {:try_start_29 .. :try_end_31} :catch_32

    .line 314
    goto :goto_55

    .line 311
    :catch_32
    move-exception v5

    .line 313
    .local v5, "e":Ljava/lang/SecurityException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error getting info for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AutofillServiceInfo"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v5    # "e":Ljava/lang/SecurityException;
    :goto_55
    goto :goto_1b

    .line 316
    :cond_56
    return-object v0
.end method

.method private static getServiceInfoOrThrow(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .registers 5
    .param p0, "comp"    # Landroid/content/ComponentName;
    .param p1, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 69
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/16 v1, 0x80

    invoke-interface {v0, p0, v1, v2, p1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_e

    .line 73
    .local v0, "si":Landroid/content/pm/ServiceInfo;
    if-eqz v0, :cond_d

    .line 74
    return-object v0

    .line 77
    .end local v0    # "si":Landroid/content/pm/ServiceInfo;
    :cond_d
    goto :goto_f

    .line 76
    :catch_e
    move-exception v0

    .line 78
    :goto_f
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseCompatibilityPackages(Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/Resources;)Landroid/util/ArrayMap;
    .registers 18
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Landroid/content/res/Resources;",
            ")",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 178
    const-string v1, "Invalid compatibility max version code:"

    const/4 v0, 0x0

    .line 180
    .local v0, "compatibilityPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    move-object v3, v0

    .line 182
    .end local v0    # "compatibilityPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .local v2, "outerDepth":I
    .local v3, "compatibilityPackages":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :goto_8
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    move v4, v0

    .local v4, "type":I
    const/4 v5, 0x1

    if-eq v0, v5, :cond_f9

    const/4 v0, 0x3

    if-ne v4, v0, :cond_1e

    .line 183
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v2, :cond_1a

    goto :goto_1e

    :cond_1a
    move-object/from16 v8, p2

    goto/16 :goto_fb

    .line 184
    :cond_1e
    :goto_1e
    if-eq v4, v0, :cond_f5

    const/4 v0, 0x4

    if-ne v4, v0, :cond_26

    .line 185
    move-object/from16 v8, p2

    goto :goto_8

    .line 188
    :cond_26
    const-string v0, "compatibility-package"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f1

    .line 189
    const/4 v6, 0x0

    .line 191
    .local v6, "cpAttributes":Landroid/content/res/TypedArray;
    :try_start_33
    invoke-static/range {p1 .. p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    move-object v7, v0

    .line 193
    .local v7, "allAttributes":Landroid/util/AttributeSet;
    sget-object v0, Lcom/android/internal/R$styleable;->AutofillService_CompatibilityPackage:[I
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_e5

    move-object/from16 v8, p2

    :try_start_3c
    invoke-virtual {v8, v7, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    move-object v6, v0

    .line 196
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 198
    .local v9, "name":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_4b
    .catchall {:try_start_3c .. :try_end_4b} :catchall_e3

    const-string v10, "AutofillServiceInfo"

    if-eqz v0, :cond_6f

    .line 199
    :try_start_4f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid compatibility package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_65
    .catchall {:try_start_4f .. :try_end_65} :catchall_e3

    .line 227
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 228
    if-eqz v6, :cond_fb

    .line 229
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_fb

    .line 203
    :cond_6f
    :try_start_6f
    invoke-virtual {v6, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_73
    .catchall {:try_start_6f .. :try_end_73} :catchall_e3

    move-object v5, v0

    .line 206
    .local v5, "maxVersionCodeStr":Ljava/lang/String;
    if-eqz v5, :cond_c4

    .line 208
    :try_start_76
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0
    :try_end_7e
    .catch Ljava/lang/NumberFormatException; {:try_start_76 .. :try_end_7e} :catch_a6
    .catchall {:try_start_76 .. :try_end_7e} :catchall_e3

    .line 213
    .local v0, "maxVersionCode":Ljava/lang/Long;
    nop

    .line 214
    :try_start_7f
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-gez v11, :cond_cd

    .line 215
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catchall {:try_start_7f .. :try_end_9d} :catchall_e3

    .line 227
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 228
    if-eqz v6, :cond_fb

    .line 229
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_fb

    .line 209
    .end local v0    # "maxVersionCode":Ljava/lang/Long;
    :catch_a6
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_a7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_bb
    .catchall {:try_start_a7 .. :try_end_bb} :catchall_e3

    .line 227
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 228
    if-eqz v6, :cond_fb

    .line 229
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_fb

    .line 220
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_c4
    const-wide v10, 0x7fffffffffffffffL

    :try_start_c9
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 222
    .local v0, "maxVersionCode":Ljava/lang/Long;
    :cond_cd
    if-nez v3, :cond_d5

    .line 223
    new-instance v10, Landroid/util/ArrayMap;

    invoke-direct {v10}, Landroid/util/ArrayMap;-><init>()V

    move-object v3, v10

    .line 225
    :cond_d5
    invoke-virtual {v3, v9, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d8
    .catchall {:try_start_c9 .. :try_end_d8} :catchall_e3

    .line 227
    nop

    .end local v0    # "maxVersionCode":Ljava/lang/Long;
    .end local v5    # "maxVersionCodeStr":Ljava/lang/String;
    .end local v7    # "allAttributes":Landroid/util/AttributeSet;
    .end local v9    # "name":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 228
    if-eqz v6, :cond_e1

    .line 229
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 232
    .end local v6    # "cpAttributes":Landroid/content/res/TypedArray;
    :cond_e1
    goto/16 :goto_8

    .line 227
    .restart local v6    # "cpAttributes":Landroid/content/res/TypedArray;
    :catchall_e3
    move-exception v0

    goto :goto_e8

    :catchall_e5
    move-exception v0

    move-object/from16 v8, p2

    :goto_e8
    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 228
    if-eqz v6, :cond_f0

    .line 229
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 231
    :cond_f0
    throw v0

    .line 188
    .end local v6    # "cpAttributes":Landroid/content/res/TypedArray;
    :cond_f1
    move-object/from16 v8, p2

    goto/16 :goto_8

    .line 184
    :cond_f5
    move-object/from16 v8, p2

    goto/16 :goto_8

    .line 182
    :cond_f9
    move-object/from16 v8, p2

    .line 235
    :cond_fb
    :goto_fb
    return-object v3
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 336
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Component: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/autofill/AutofillServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 337
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Settings: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/autofill/AutofillServiceInfo;->mSettingsActivity:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Passwords activity: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/autofill/AutofillServiceInfo;->mPasswordsActivity:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Compat packages: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/autofill/AutofillServiceInfo;->mCompatibilityPackages:Landroid/util/ArrayMap;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 340
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Inline Suggestions Enabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 341
    iget-boolean v0, p0, Landroid/service/autofill/AutofillServiceInfo;->mInlineSuggestionsEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 342
    return-void
.end method

.method public getCompatibilityPackages()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Landroid/service/autofill/AutofillServiceInfo;->mCompatibilityPackages:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getPasswordsActivity()Ljava/lang/String;
    .registers 2

    .line 283
    iget-object v0, p0, Landroid/service/autofill/AutofillServiceInfo;->mPasswordsActivity:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceInfo()Landroid/content/pm/ServiceInfo;
    .registers 2

    .line 273
    iget-object v0, p0, Landroid/service/autofill/AutofillServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0
.end method

.method public getSettingsActivity()Ljava/lang/String;
    .registers 2

    .line 278
    iget-object v0, p0, Landroid/service/autofill/AutofillServiceInfo;->mSettingsActivity:Ljava/lang/String;

    return-object v0
.end method

.method public isInlineSuggestionsEnabled()Z
    .registers 2

    .line 292
    iget-boolean v0, p0, Landroid/service/autofill/AutofillServiceInfo;->mInlineSuggestionsEnabled:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 322
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/AutofillServiceInfo;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 324
    const-string v1, ", settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/AutofillServiceInfo;->mSettingsActivity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    const-string v1, ", passwords activity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/AutofillServiceInfo;->mPasswordsActivity:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    const-string v1, ", hasCompatPckgs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/autofill/AutofillServiceInfo;->mCompatibilityPackages:Landroid/util/ArrayMap;

    if-eqz v2, :cond_43

    .line 327
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_43

    const/4 v2, 0x1

    goto :goto_44

    :cond_43
    const/4 v2, 0x0

    .line 326
    :goto_44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 327
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    const-string v1, ", inline suggestions enabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/service/autofill/AutofillServiceInfo;->mInlineSuggestionsEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.class public Lcom/samsung/android/core/CoreSaLogger;
.super Ljava/lang/Object;
.source "CoreSaLogger.java"


# static fields
.field private static final ADVANCED_TRACKING_ID:Ljava/lang/String; = "408-399-975257"

.field private static final BASIC_TRACKING_ID:Ljava/lang/String; = "4F4-399-995755"

.field public static final DETAIL_KEY:Ljava/lang/String; = "det"

.field private static final DEX_TRACKING_ID:Ljava/lang/String; = "403-399-565756"

.field private static final DIMENSION_KEY:Ljava/lang/String; = "dimension"

.field private static final DIMENSION_VALUE_KEY1:Ljava/lang/String; = "d_key1"

.field private static final EXTRA_KEY:Ljava/lang/String; = "extra"

.field private static final FEATURE_KEY:Ljava/lang/String; = "feature"

.field private static final IS_FACTORY_BINARY:Z

.field private static final NULL_VALUE:I = -0x1

.field private static final PACKAGE_NAME_KEY:Ljava/lang/String; = "pkg_name"

.field private static final SA_ACTION:Ljava/lang/String; = "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

.field private static final SA_PACKAGE:Ljava/lang/String; = "com.sec.android.diagmonagent"

.field private static final SETTING_KEY:Ljava/lang/String; = "setting"

.field private static final SYSTEMUI_TRACKING_ID:Ljava/lang/String; = "472-399-5110257"

.field private static final TAG:Ljava/lang/String; = "CoreSaLogger"

.field private static final TRACKING_ID_KEY:Ljava/lang/String; = "tracking_id"

.field private static final TYPE_KEY:Ljava/lang/String; = "type"

.field private static final TYPE_VALUE_EV:Ljava/lang/String; = "ev"

.field private static final TYPE_VALUE_ST:Ljava/lang/String; = "st"

.field private static final VALUE_KEY:Ljava/lang/String; = "value"

.field private static final sSettingMapForAdvanced:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSettingMapForBasic:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSettingMapForDex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/core/CoreSaLogger;->IS_FACTORY_BINARY:Z

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/core/CoreSaLogger;->sSettingMapForBasic:Ljava/util/HashMap;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/core/CoreSaLogger;->sSettingMapForAdvanced:Ljava/util/HashMap;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/core/CoreSaLogger;->sSettingMapForDex:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$sendSaLoggingBroadcast$0(Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;Ljava/lang/String;Landroid/content/Context;)V
    .registers 11
    .param p0, "eventId"    # Ljava/lang/String;
    .param p1, "detail"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "customDimension"    # Ljava/util/HashMap;
    .param p5, "trackingId"    # Ljava/lang/String;
    .param p6, "context"    # Landroid/content/Context;

    .line 98
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_49

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendSaLoggingBroadcast eventId : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", eventDetail : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", value : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 101
    cmp-long v3, p2, v1

    if-eqz v3, :cond_2f

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_32

    :cond_2f
    const-string/jumbo v3, "null"

    :goto_32
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", customDimension : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 99
    const-string v3, "CoreSaLogger"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 106
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v3, "tracking_id"

    invoke-virtual {v0, v3, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v3, "feature"

    invoke-virtual {v0, v3, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    if-eqz p1, :cond_60

    .line 109
    const-string v3, "extra"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_60
    cmp-long v1, p2, v1

    if-eqz v1, :cond_6a

    .line 112
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 114
    :cond_6a
    if-eqz p4, :cond_71

    .line 115
    const-string v1, "dimension"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 117
    :cond_71
    const-string/jumbo v1, "type"

    const-string v2, "ev"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    const-string/jumbo v1, "pkg_name"

    const-string v2, "com.samsung.android.appcore"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sec.android.diagmonagent"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1

    .line 139
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    .line 138
    invoke-virtual {p6, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 142
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SA_RUNESTONE_LOGGING:Z

    if-eqz v1, :cond_a4

    .line 143
    invoke-static {p6, p0, p1}, Lcom/samsung/android/core/RunestoneLogger;->interpretSaToRunestone(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    :cond_a4
    return-void
.end method

.method static synthetic lambda$sendSaLoggingBroadcastForSetting$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 8
    .param p0, "settingId"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "trackingId"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .line 164
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    const-string v1, "CoreSaLogger"

    if-eqz v0, :cond_27

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendSaLoggingBroadcastForSetting settingId : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", value : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_27
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 170
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "tracking_id"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const-string/jumbo v2, "pkg_name"

    const-string v3, "com.samsung.android.appcore"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string/jumbo v2, "type"

    const-string/jumbo v3, "st"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_a2

    :cond_4a
    goto :goto_69

    :sswitch_4b
    const-string v2, "4F4-399-995755"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    const/4 v2, 0x0

    goto :goto_6a

    :sswitch_55
    const-string v2, "408-399-975257"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    const/4 v2, 0x1

    goto :goto_6a

    :sswitch_5f
    const-string v2, "403-399-565756"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    const/4 v2, 0x2

    goto :goto_6a

    :goto_69
    const/4 v2, -0x1

    :goto_6a
    packed-switch v2, :pswitch_data_b0

    .line 186
    const-string v2, "Invalid tracking id"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void

    .line 183
    :pswitch_73
    sget-object v1, Lcom/samsung/android/core/CoreSaLogger;->sSettingMapForDex:Ljava/util/HashMap;

    .line 184
    .local v1, "setting":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_7c

    .line 180
    .end local v1    # "setting":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_76
    sget-object v1, Lcom/samsung/android/core/CoreSaLogger;->sSettingMapForAdvanced:Ljava/util/HashMap;

    .line 181
    .restart local v1    # "setting":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_7c

    .line 177
    .end local v1    # "setting":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_79
    sget-object v1, Lcom/samsung/android/core/CoreSaLogger;->sSettingMapForBasic:Ljava/util/HashMap;

    .line 178
    .restart local v1    # "setting":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    .line 189
    :goto_7c
    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string/jumbo v2, "setting"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 192
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.sec.android.diagmonagent"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v2

    .line 193
    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    .line 192
    invoke-virtual {p3, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 195
    return-void

    :sswitch_data_a2
    .sparse-switch
        -0x38ce124c -> :sswitch_5f
        -0xb747038 -> :sswitch_55
        0x5523cb27 -> :sswitch_4b
    .end sparse-switch

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_79
        :pswitch_76
        :pswitch_73
    .end packed-switch
.end method

.method public static logForAdvanced(Ljava/lang/String;)V
    .registers 7
    .param p0, "eventId"    # Ljava/lang/String;

    .line 219
    const-string v0, "408-399-975257"

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V

    .line 220
    return-void
.end method

.method public static logForAdvanced(Ljava/lang/String;I)V
    .registers 8
    .param p0, "eventId"    # Ljava/lang/String;
    .param p1, "value"    # I

    .line 227
    const-string v0, "408-399-975257"

    const/4 v2, 0x0

    int-to-long v3, p1

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V

    .line 228
    return-void
.end method

.method public static logForAdvanced(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "eventId"    # Ljava/lang/String;
    .param p1, "detail"    # Ljava/lang/String;

    .line 223
    const-string v0, "408-399-975257"

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V

    .line 224
    return-void
.end method

.method public static logForAdvanced(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p0, "eventId"    # Ljava/lang/String;
    .param p1, "detail"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 231
    const-string v0, "408-399-975257"

    int-to-long v3, p2

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V

    .line 232
    return-void
.end method

.method public static logForBasic(Ljava/lang/String;)V
    .registers 7
    .param p0, "eventId"    # Ljava/lang/String;

    .line 199
    const-string v0, "4F4-399-995755"

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V

    .line 200
    return-void
.end method

.method public static logForBasic(Ljava/lang/String;I)V
    .registers 8
    .param p0, "eventId"    # Ljava/lang/String;
    .param p1, "value"    # I

    .line 207
    const-string v0, "4F4-399-995755"

    const/4 v2, 0x0

    int-to-long v3, p1

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V

    .line 208
    return-void
.end method

.method public static logForBasic(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "eventId"    # Ljava/lang/String;
    .param p1, "detail"    # Ljava/lang/String;

    .line 203
    const-string v0, "4F4-399-995755"

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V

    .line 204
    return-void
.end method

.method public static logForBasic(Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 8
    .param p0, "eventId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 211
    .local p1, "customDimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "4F4-399-995755"

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    move-object v1, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V

    .line 212
    return-void
.end method

.method public static logForDexMW(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "eventId"    # Ljava/lang/String;
    .param p1, "detail"    # Ljava/lang/String;

    .line 239
    const-string v0, "403-399-565756"

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V

    .line 240
    return-void
.end method

.method public static logForDexMW(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p0, "eventId"    # Ljava/lang/String;
    .param p1, "detail"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 243
    const-string v0, "403-399-565756"

    int-to-long v3, p2

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V

    .line 244
    return-void
.end method

.method public static logForSystemUI(Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 8
    .param p0, "eventId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 247
    .local p1, "customDimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "472-399-5110257"

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    move-object v1, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/core/CoreSaLogger;->sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V

    .line 248
    return-void
.end method

.method public static logSettingStatusForAdvanced(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "settingId"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 235
    const-string v0, "408-399-975257"

    invoke-static {v0, p0, p1}, Lcom/samsung/android/core/CoreSaLogger;->sendSettingLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public static logSettingStatusForBasic(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "settingId"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 215
    const-string v0, "4F4-399-995755"

    invoke-static {v0, p0, p1}, Lcom/samsung/android/core/CoreSaLogger;->sendSettingLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method private static sendLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V
    .registers 15
    .param p0, "trackingId"    # Ljava/lang/String;
    .param p1, "eventId"    # Ljava/lang/String;
    .param p2, "eventDetail"    # Ljava/lang/String;
    .param p3, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 79
    .local p5, "customDimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v0, Lcom/samsung/android/core/CoreSaLogger;->IS_FACTORY_BINARY:Z

    const-string v1, "CoreSaLogger"

    if-eqz v0, :cond_c

    .line 80
    const-string v0, "Does\'t send Logging, It\'s FactoryBinary"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void

    .line 84
    :cond_c
    :try_start_c
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-wide v6, p3

    move-object v8, p5

    invoke-interface/range {v2 .. v8}, Landroid/app/IActivityTaskManager;->sendSaLoggingBroadcast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_18} :catch_19

    .line 88
    goto :goto_1f

    .line 86
    :catch_19
    move-exception v0

    .line 87
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to sendSaLoggingBroadcast"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1f
    return-void
.end method

.method public static sendSaLoggingBroadcast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;)V
    .registers 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "trackingId"    # Ljava/lang/String;
    .param p2, "eventId"    # Ljava/lang/String;
    .param p3, "detail"    # Ljava/lang/String;
    .param p4, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 97
    .local p6, "customDimension":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v9, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda0;

    move-object v1, v9

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move-object/from16 v6, p6

    move-object v7, p1

    move-object v8, p0

    invoke-direct/range {v1 .. v8}, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/HashMap;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 146
    return-void
.end method

.method public static sendSaLoggingBroadcastForSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "trackingId"    # Ljava/lang/String;
    .param p2, "settingId"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 163
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2, p3, p1, p0}, Lcom/samsung/android/core/CoreSaLogger$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 196
    return-void
.end method

.method private static sendSettingLogToServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "trackingId"    # Ljava/lang/String;
    .param p1, "settingId"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 149
    sget-boolean v0, Lcom/samsung/android/core/CoreSaLogger;->IS_FACTORY_BINARY:Z

    const-string v1, "CoreSaLogger"

    if-eqz v0, :cond_c

    .line 150
    const-string v0, "Does\'t send Logging, It\'s FactoryBinary"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void

    .line 154
    :cond_c
    :try_start_c
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Landroid/app/IActivityTaskManager;->sendSaLoggingBroadcastForSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_13} :catch_14

    .line 158
    goto :goto_1a

    .line 156
    :catch_14
    move-exception v0

    .line 157
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to sendSaLoggingBroadcastForSetting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1a
    return-void
.end method

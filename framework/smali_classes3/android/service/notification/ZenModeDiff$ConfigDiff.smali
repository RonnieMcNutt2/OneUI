.class public Landroid/service/notification/ZenModeDiff$ConfigDiff;
.super Landroid/service/notification/ZenModeDiff$BaseDiff;
.source "ZenModeDiff.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/notification/ZenModeDiff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigDiff"
.end annotation


# static fields
.field public static final FIELD_ALLOW_ALARMS:Ljava/lang/String; = "allowAlarms"

.field public static final FIELD_ALLOW_CALLS:Ljava/lang/String; = "allowCalls"

.field public static final FIELD_ALLOW_CALLS_FROM:Ljava/lang/String; = "allowCallsFrom"

.field public static final FIELD_ALLOW_CONVERSATIONS:Ljava/lang/String; = "allowConversations"

.field public static final FIELD_ALLOW_CONVERSATIONS_FROM:Ljava/lang/String; = "allowConversationsFrom"

.field public static final FIELD_ALLOW_EVENTS:Ljava/lang/String; = "allowEvents"

.field public static final FIELD_ALLOW_MEDIA:Ljava/lang/String; = "allowMedia"

.field public static final FIELD_ALLOW_MESSAGES:Ljava/lang/String; = "allowMessages"

.field public static final FIELD_ALLOW_MESSAGES_FROM:Ljava/lang/String; = "allowMessagesFrom"

.field public static final FIELD_ALLOW_REMINDERS:Ljava/lang/String; = "allowReminders"

.field public static final FIELD_ALLOW_REPEAT_CALLERS:Ljava/lang/String; = "allowRepeatCallers"

.field public static final FIELD_ALLOW_SYSTEM:Ljava/lang/String; = "allowSystem"

.field public static final FIELD_ARE_CHANNELS_BYPASSING_DND:Ljava/lang/String; = "areChannelsBypassingDnd"

.field public static final FIELD_SUPPRESSED_VISUAL_EFFECTS:Ljava/lang/String; = "suppressedVisualEffects"

.field public static final FIELD_USER:Ljava/lang/String; = "user"

.field private static final PEOPLE_TYPE_FIELDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAutomaticRulesDiff:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/service/notification/ZenModeDiff$RuleDiff;",
            ">;"
        }
    .end annotation
.end field

.field private mManualRuleDiff:Landroid/service/notification/ZenModeDiff$RuleDiff;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 224
    nop

    .line 225
    const-string v0, "allowCallsFrom"

    const-string v1, "allowMessagesFrom"

    invoke-static {v0, v1}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/service/notification/ZenModeDiff$ConfigDiff;->PEOPLE_TYPE_FIELDS:Ljava/util/Set;

    .line 224
    return-void
.end method

.method public constructor <init>(Landroid/service/notification/ZenModeConfig;Landroid/service/notification/ZenModeConfig;)V
    .registers 11
    .param p1, "from"    # Landroid/service/notification/ZenModeConfig;
    .param p2, "to"    # Landroid/service/notification/ZenModeConfig;

    .line 234
    invoke-direct {p0, p1, p2}, Landroid/service/notification/ZenModeDiff$BaseDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 205
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/service/notification/ZenModeDiff$ConfigDiff;->mAutomaticRulesDiff:Landroid/util/ArrayMap;

    .line 236
    if-nez p1, :cond_f

    if-nez p2, :cond_f

    .line 237
    return-void

    .line 239
    :cond_f
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->hasExistenceChange()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 242
    return-void

    .line 246
    :cond_16
    iget v0, p1, Landroid/service/notification/ZenModeConfig;->user:I

    iget v1, p2, Landroid/service/notification/ZenModeConfig;->user:I

    if-eq v0, v1, :cond_33

    .line 247
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget v1, p1, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p2, Landroid/service/notification/ZenModeConfig;->user:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v1, "user"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 249
    :cond_33
    iget-boolean v0, p1, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    iget-boolean v1, p2, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    if-eq v0, v1, :cond_4f

    .line 250
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-boolean v1, p1, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p2, Landroid/service/notification/ZenModeConfig;->allowAlarms:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "allowAlarms"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 252
    :cond_4f
    iget-boolean v0, p1, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    iget-boolean v1, p2, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    if-eq v0, v1, :cond_6b

    .line 253
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-boolean v1, p1, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p2, Landroid/service/notification/ZenModeConfig;->allowMedia:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "allowMedia"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 255
    :cond_6b
    iget-boolean v0, p1, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    iget-boolean v1, p2, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    if-eq v0, v1, :cond_87

    .line 256
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-boolean v1, p1, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p2, Landroid/service/notification/ZenModeConfig;->allowSystem:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "allowSystem"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 258
    :cond_87
    iget-boolean v0, p1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    iget-boolean v1, p2, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eq v0, v1, :cond_a3

    .line 259
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-boolean v1, p1, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p2, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "allowCalls"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 261
    :cond_a3
    iget-boolean v0, p1, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    iget-boolean v1, p2, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    if-eq v0, v1, :cond_bf

    .line 262
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-boolean v1, p1, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    .line 263
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p2, Landroid/service/notification/ZenModeConfig;->allowReminders:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 262
    const-string v1, "allowReminders"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 265
    :cond_bf
    iget-boolean v0, p1, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    iget-boolean v1, p2, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eq v0, v1, :cond_db

    .line 266
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-boolean v1, p1, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p2, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "allowEvents"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 268
    :cond_db
    iget-boolean v0, p1, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    iget-boolean v1, p2, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    if-eq v0, v1, :cond_f7

    .line 269
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-boolean v1, p1, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    .line 270
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p2, Landroid/service/notification/ZenModeConfig;->allowRepeatCallers:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 269
    const-string v1, "allowRepeatCallers"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 272
    :cond_f7
    iget-boolean v0, p1, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    iget-boolean v1, p2, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eq v0, v1, :cond_113

    .line 273
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-boolean v1, p1, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    .line 274
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p2, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 273
    const-string v1, "allowMessages"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 276
    :cond_113
    iget-boolean v0, p1, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    iget-boolean v1, p2, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    if-eq v0, v1, :cond_12f

    .line 277
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-boolean v1, p1, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    .line 278
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p2, Landroid/service/notification/ZenModeConfig;->allowConversations:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 277
    const-string v1, "allowConversations"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 280
    :cond_12f
    iget v0, p1, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    iget v1, p2, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    if-eq v0, v1, :cond_14b

    .line 281
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget v1, p1, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 282
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p2, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 281
    const-string v1, "allowCallsFrom"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 284
    :cond_14b
    iget v0, p1, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    iget v1, p2, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    if-eq v0, v1, :cond_167

    .line 285
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget v1, p1, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    .line 286
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p2, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 285
    const-string v1, "allowMessagesFrom"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 288
    :cond_167
    iget v0, p1, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    iget v1, p2, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    if-eq v0, v1, :cond_183

    .line 289
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget v1, p1, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    .line 290
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p2, Landroid/service/notification/ZenModeConfig;->allowConversationsFrom:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 289
    const-string v1, "allowConversationsFrom"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 292
    :cond_183
    iget v0, p1, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    iget v1, p2, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    if-eq v0, v1, :cond_1a0

    .line 293
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget v1, p1, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    .line 294
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p2, Landroid/service/notification/ZenModeConfig;->suppressedVisualEffects:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 293
    const-string/jumbo v1, "suppressedVisualEffects"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 296
    :cond_1a0
    iget-boolean v0, p1, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    iget-boolean v1, p2, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    if-eq v0, v1, :cond_1bc

    .line 297
    new-instance v0, Landroid/service/notification/ZenModeDiff$FieldDiff;

    iget-boolean v1, p1, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    .line 298
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-boolean v2, p2, Landroid/service/notification/ZenModeConfig;->areChannelsBypassingDnd:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/service/notification/ZenModeDiff$FieldDiff;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 297
    const-string v1, "areChannelsBypassingDnd"

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->addField(Ljava/lang/String;Landroid/service/notification/ZenModeDiff$FieldDiff;)V

    .line 302
    :cond_1bc
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 303
    .local v0, "allRules":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v1, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {v0, v1}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->addKeys(Landroid/util/ArraySet;Landroid/util/ArrayMap;)V

    .line 304
    iget-object v1, p2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-static {v0, v1}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->addKeys(Landroid/util/ArraySet;Landroid/util/ArrayMap;)V

    .line 305
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    .line 306
    .local v1, "num":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d0
    if-ge v2, v1, :cond_207

    .line 307
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 309
    .local v3, "rule":Ljava/lang/String;
    iget-object v4, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    const/4 v5, 0x0

    if-eqz v4, :cond_1e6

    iget-object v4, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    goto :goto_1e7

    .line 310
    :cond_1e6
    move-object v4, v5

    :goto_1e7
    nop

    .line 312
    .local v4, "fromRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    iget-object v6, p2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    if-eqz v6, :cond_1f4

    iget-object v5, p2, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 313
    .local v5, "toRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    :cond_1f4
    new-instance v6, Landroid/service/notification/ZenModeDiff$RuleDiff;

    invoke-direct {v6, v4, v5}, Landroid/service/notification/ZenModeDiff$RuleDiff;-><init>(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    .line 314
    .local v6, "ruleDiff":Landroid/service/notification/ZenModeDiff$RuleDiff;
    invoke-virtual {v6}, Landroid/service/notification/ZenModeDiff$RuleDiff;->hasDiff()Z

    move-result v7

    if-eqz v7, :cond_204

    .line 315
    iget-object v7, p0, Landroid/service/notification/ZenModeDiff$ConfigDiff;->mAutomaticRulesDiff:Landroid/util/ArrayMap;

    invoke-virtual {v7, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    .end local v3    # "rule":Ljava/lang/String;
    .end local v4    # "fromRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v5    # "toRule":Landroid/service/notification/ZenModeConfig$ZenRule;
    .end local v6    # "ruleDiff":Landroid/service/notification/ZenModeDiff$RuleDiff;
    :cond_204
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d0

    .line 319
    .end local v2    # "i":I
    :cond_207
    new-instance v2, Landroid/service/notification/ZenModeDiff$RuleDiff;

    iget-object v3, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v4, p2, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v2, v3, v4}, Landroid/service/notification/ZenModeDiff$RuleDiff;-><init>(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/service/notification/ZenModeConfig$ZenRule;)V

    .line 320
    .local v2, "manualRuleDiff":Landroid/service/notification/ZenModeDiff$RuleDiff;
    invoke-virtual {v2}, Landroid/service/notification/ZenModeDiff$RuleDiff;->hasDiff()Z

    move-result v3

    if-eqz v3, :cond_218

    .line 321
    iput-object v2, p0, Landroid/service/notification/ZenModeDiff$ConfigDiff;->mManualRuleDiff:Landroid/service/notification/ZenModeDiff$RuleDiff;

    .line 323
    :cond_218
    return-void
.end method

.method private static addKeys(Landroid/util/ArraySet;Landroid/util/ArrayMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArraySet<",
            "TT;>;",
            "Landroid/util/ArrayMap<",
            "TT;*>;)V"
        }
    .end annotation

    .line 326
    .local p0, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TT;>;"
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TT;*>;"
    if-eqz p1, :cond_13

    .line 327
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 328
    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 327
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 331
    .end local v0    # "i":I
    :cond_13
    return-void
.end method


# virtual methods
.method public getAllAutomaticRuleDiffs()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/service/notification/ZenModeDiff$RuleDiff;",
            ">;"
        }
    .end annotation

    .line 435
    iget-object v0, p0, Landroid/service/notification/ZenModeDiff$ConfigDiff;->mAutomaticRulesDiff:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_b

    iget-object v0, p0, Landroid/service/notification/ZenModeDiff$ConfigDiff;->mAutomaticRulesDiff:Landroid/util/ArrayMap;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public getManualRuleDiff()Landroid/service/notification/ZenModeDiff$RuleDiff;
    .registers 2

    .line 428
    iget-object v0, p0, Landroid/service/notification/ZenModeDiff$ConfigDiff;->mManualRuleDiff:Landroid/service/notification/ZenModeDiff$RuleDiff;

    return-object v0
.end method

.method public hasDiff()Z
    .registers 2

    .line 338
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->hasExistenceChange()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 339
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->hasFieldDiffs()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Landroid/service/notification/ZenModeDiff$ConfigDiff;->mManualRuleDiff:Landroid/service/notification/ZenModeDiff$RuleDiff;

    if-nez v0, :cond_1b

    iget-object v0, p0, Landroid/service/notification/ZenModeDiff$ConfigDiff;->mAutomaticRulesDiff:Landroid/util/ArrayMap;

    .line 341
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-lez v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    .line 338
    :goto_1c
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Diff["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 347
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->hasDiff()Z

    move-result v1

    if-nez v1, :cond_13

    .line 348
    const-string/jumbo v1, "no changes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    :cond_13
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->hasExistenceChange()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 353
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->wasAdded()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 354
    const-string v1, "added"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31

    .line 355
    :cond_25
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->wasRemoved()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 356
    const-string/jumbo v1, "removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    :cond_31
    :goto_31
    const/4 v1, 0x1

    .line 362
    .local v1, "first":Z
    invoke-virtual {p0}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->fieldNamesWithDiff()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, ",\n"

    if-eqz v3, :cond_cd

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 363
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/service/notification/ZenModeDiff$ConfigDiff;->getDiffForField(Ljava/lang/String;)Landroid/service/notification/ZenModeDiff$FieldDiff;

    move-result-object v5

    .line 364
    .local v5, "diff":Landroid/service/notification/ZenModeDiff$FieldDiff;
    if-nez v5, :cond_4f

    .line 366
    goto :goto_3a

    .line 368
    :cond_4f
    if-eqz v1, :cond_53

    .line 369
    const/4 v1, 0x0

    goto :goto_56

    .line 371
    :cond_53
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    :goto_56
    sget-object v4, Landroid/service/notification/ZenModeDiff$ConfigDiff;->PEOPLE_TYPE_FIELDS:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "->"

    const-string v7, ":"

    if-eqz v4, :cond_8e

    .line 376
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v5}, Landroid/service/notification/ZenModeDiff$FieldDiff;->from()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v5}, Landroid/service/notification/ZenModeDiff$FieldDiff;->to()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cb

    .line 381
    :cond_8e
    const-string v4, "allowConversationsFrom"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c2

    .line 382
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v5}, Landroid/service/notification/ZenModeDiff$FieldDiff;->from()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/service/notification/ZenPolicy;->conversationTypeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v5}, Landroid/service/notification/ZenModeDiff$FieldDiff;->to()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/service/notification/ZenPolicy;->conversationTypeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_cb

    .line 388
    :cond_c2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 392
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "diff":Landroid/service/notification/ZenModeDiff$FieldDiff;
    :goto_cb
    goto/16 :goto_3a

    .line 395
    :cond_cd
    iget-object v2, p0, Landroid/service/notification/ZenModeDiff$ConfigDiff;->mManualRuleDiff:Landroid/service/notification/ZenModeDiff$RuleDiff;

    if-eqz v2, :cond_e9

    invoke-virtual {v2}, Landroid/service/notification/ZenModeDiff$RuleDiff;->hasDiff()Z

    move-result v2

    if-eqz v2, :cond_e9

    .line 396
    if-eqz v1, :cond_db

    .line 397
    const/4 v1, 0x0

    goto :goto_de

    .line 399
    :cond_db
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    :goto_de
    const-string/jumbo v2, "manualRule:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    iget-object v2, p0, Landroid/service/notification/ZenModeDiff$ConfigDiff;->mManualRuleDiff:Landroid/service/notification/ZenModeDiff$RuleDiff;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 406
    :cond_e9
    iget-object v2, p0, Landroid/service/notification/ZenModeDiff$ConfigDiff;->mAutomaticRulesDiff:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_127

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 407
    .local v3, "rule":Ljava/lang/String;
    iget-object v5, p0, Landroid/service/notification/ZenModeDiff$ConfigDiff;->mAutomaticRulesDiff:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/ZenModeDiff$RuleDiff;

    .line 408
    .local v5, "diff":Landroid/service/notification/ZenModeDiff$RuleDiff;
    if-eqz v5, :cond_126

    invoke-virtual {v5}, Landroid/service/notification/ZenModeDiff$RuleDiff;->hasDiff()Z

    move-result v6

    if-eqz v6, :cond_126

    .line 409
    if-eqz v1, :cond_113

    .line 410
    const/4 v1, 0x0

    goto :goto_116

    .line 412
    :cond_113
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    :goto_116
    const-string v6, "automaticRule["

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    const-string v6, "]:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 419
    .end local v3    # "rule":Ljava/lang/String;
    .end local v5    # "diff":Landroid/service/notification/ZenModeDiff$RuleDiff;
    :cond_126
    goto :goto_f3

    .line 421
    :cond_127
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

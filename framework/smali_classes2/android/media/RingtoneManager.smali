.class public Landroid/media/RingtoneManager;
.super Ljava/lang/Object;
.source "RingtoneManager.java"


# static fields
.field public static final ACTION_RINGTONE_PICKER:Ljava/lang/String; = "android.intent.action.RINGTONE_PICKER"

.field public static final EXTRA_RINGTONE_AUDIO_ATTRIBUTES_FLAGS:Ljava/lang/String; = "android.intent.extra.ringtone.AUDIO_ATTRIBUTES_FLAGS"

.field public static final EXTRA_RINGTONE_DEFAULT_URI:Ljava/lang/String; = "android.intent.extra.ringtone.DEFAULT_URI"

.field public static final EXTRA_RINGTONE_EXISTING_URI:Ljava/lang/String; = "android.intent.extra.ringtone.EXISTING_URI"

.field public static final EXTRA_RINGTONE_INCLUDE_DRM:Ljava/lang/String; = "android.intent.extra.ringtone.INCLUDE_DRM"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_RINGTONE_PICKED_URI:Ljava/lang/String; = "android.intent.extra.ringtone.PICKED_URI"

.field public static final EXTRA_RINGTONE_SHOW_DEFAULT:Ljava/lang/String; = "android.intent.extra.ringtone.SHOW_DEFAULT"

.field public static final EXTRA_RINGTONE_SHOW_SILENT:Ljava/lang/String; = "android.intent.extra.ringtone.SHOW_SILENT"

.field public static final EXTRA_RINGTONE_TITLE:Ljava/lang/String; = "android.intent.extra.ringtone.TITLE"

.field public static final EXTRA_RINGTONE_TYPE:Ljava/lang/String; = "android.intent.extra.ringtone.TYPE"

.field private static final FILE_PATH:Ljava/lang/String; = "path"

.field protected static final HIGHLIGHT_OFFSET:Ljava/lang/String; = "highlight_offset"

.field public static final ID_COLUMN_INDEX:I = 0x0

.field private static final INTERNAL_COLUMNS:[Ljava/lang/String;

.field private static final MEDIA_COLUMNS:[Ljava/lang/String;

.field private static OPEN_THEME_DIRECTORY:Ljava/lang/String; = null

.field protected static PREFIX_OPEN_THEME:Ljava/lang/String; = null

.field public static final SEM_TYPE_NOTIFICATION_SECOND:I = 0x100

.field public static final SEM_TYPE_RINGTONE_SECOND:I = 0x80

.field private static final TAG:Ljava/lang/String; = "RingtoneManager"

.field private static final TITLE_CACHE:Ljava/lang/String; = "title"

.field public static final TITLE_COLUMN_INDEX:I = 0x1

.field public static final TYPE_ALARM:I = 0x4

.field public static final TYPE_ALL:I = 0x7

.field public static final TYPE_NOTIFICATION:I = 0x2

.field public static final TYPE_RINGTONE:I = 0x1

.field public static final TYPE_SYSTEM_SOUND:I = 0x200

.field public static final URI_COLUMN_INDEX:I = 0x2

.field private static mDefaultAlarmUri:Landroid/net/Uri;

.field private static mDefaultNotification2Uri:Landroid/net/Uri;

.field private static mDefaultNotificationUri:Landroid/net/Uri;

.field private static mDefaultRingtone2Uri:Landroid/net/Uri;

.field private static mDefaultRingtoneUri:Landroid/net/Uri;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private final mFilterColumns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIncludeParentRingtones:Z

.field private mPreviousRingtone:Landroid/media/Ringtone;

.field private mStopPreviousRingtone:Z

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 225
    const-string v0, "_id"

    const-string v1, "title"

    const-string v2, "title"

    const-string v3, "title_key"

    const-string v4, "volume_name"

    const-string v5, "bucket_display_name"

    const-string v6, "is_ringtone"

    const-string v7, "is_notification"

    const-string v8, "is_alarm"

    const-string v9, "bookmark"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/RingtoneManager;->INTERNAL_COLUMNS:[Ljava/lang/String;

    .line 240
    const-string v1, "_id"

    const-string v2, "title"

    const-string v3, "title"

    const-string v4, "title_key"

    const-string v5, "volume_name"

    const-string v6, "bucket_display_name"

    const-string v7, "is_ringtone"

    const-string v8, "is_notification"

    const-string v9, "is_alarm"

    const-string v10, "bookmark"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/RingtoneManager;->MEDIA_COLUMNS:[Ljava/lang/String;

    .line 1495
    const-string v0, "theme_"

    sput-object v0, Landroid/media/RingtoneManager;->PREFIX_OPEN_THEME:Ljava/lang/String;

    .line 1500
    const-string v0, "/data/overlays/media/"

    sput-object v0, Landroid/media/RingtoneManager;->OPEN_THEME_DIRECTORY:Ljava/lang/String;

    .line 1647
    const/4 v0, 0x0

    sput-object v0, Landroid/media/RingtoneManager;->mDefaultRingtoneUri:Landroid/net/Uri;

    .line 1648
    sput-object v0, Landroid/media/RingtoneManager;->mDefaultRingtone2Uri:Landroid/net/Uri;

    .line 1649
    sput-object v0, Landroid/media/RingtoneManager;->mDefaultNotificationUri:Landroid/net/Uri;

    .line 1650
    sput-object v0, Landroid/media/RingtoneManager;->mDefaultNotification2Uri:Landroid/net/Uri;

    .line 1651
    sput-object v0, Landroid/media/RingtoneManager;->mDefaultAlarmUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 299
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;Z)V

    .line 300
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "includeParentRingtones"    # Z

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/RingtoneManager;->mType:I

    .line 285
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 287
    iput-boolean v0, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    .line 313
    iput-object p1, p0, Landroid/media/RingtoneManager;->mActivity:Landroid/app/Activity;

    .line 314
    iput-object p1, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    .line 315
    iget v0, p0, Landroid/media/RingtoneManager;->mType:I

    invoke-virtual {p0, v0}, Landroid/media/RingtoneManager;->setType(I)V

    .line 316
    iput-boolean p2, p0, Landroid/media/RingtoneManager;->mIncludeParentRingtones:Z

    .line 317
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 327
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;Z)V

    .line 328
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "includeParentRingtones"    # Z

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/RingtoneManager;->mType:I

    .line 285
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 287
    iput-boolean v0, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/RingtoneManager;->mActivity:Landroid/app/Activity;

    .line 341
    iput-object p1, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    .line 342
    iget v0, p0, Landroid/media/RingtoneManager;->mType:I

    invoke-virtual {p0, v0}, Landroid/media/RingtoneManager;->setType(I)V

    .line 343
    iput-boolean p2, p0, Landroid/media/RingtoneManager;->mIncludeParentRingtones:Z

    .line 344
    return-void
.end method

.method private static checkDefaultRingtoneProperUri(Landroid/content/Context;I)Z
    .registers 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .line 1789
    invoke-static/range {p1 .. p1}, Landroid/media/RingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v1

    .line 1790
    .local v1, "settingKey":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Landroid/media/RingtoneManager;->getSettingKeyForAbsolutePath(I)Ljava/lang/String;

    move-result-object v2

    .line 1791
    .local v2, "settingKeyPath":Ljava/lang/String;
    const/4 v3, 0x1

    if-eqz v1, :cond_d4

    if-nez v2, :cond_f

    goto/16 :goto_d4

    .line 1795
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1796
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    .line 1795
    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 1797
    .local v4, "settingValue":Ljava/lang/String;
    if-nez v4, :cond_1e

    .line 1798
    return v3

    .line 1801
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ringtone value : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "RingtoneManager"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 1803
    .local v12, "ringtoneUri":Landroid/net/Uri;
    invoke-static {v12}, Landroid/media/RingtoneManager;->isMediaProviderUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_d3

    invoke-static {v12}, Landroid/media/RingtoneManager;->isInternalRingtoneUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_48

    goto/16 :goto_d3

    .line 1807
    :cond_48
    invoke-static {v12}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    const/4 v13, 0x0

    if-gtz v0, :cond_54

    .line 1813
    return v13

    .line 1816
    :cond_54
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1817
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getUserId()I

    move-result v6

    .line 1816
    invoke-static {v0, v2, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v14

    .line 1818
    .local v14, "ringtonePath":Ljava/lang/String;
    if-nez v14, :cond_68

    .line 1819
    const-string v0, "Ringtone path is null"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1821
    return v3

    .line 1824
    :cond_68
    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v6, "path"

    invoke-static {v0, v6}, Landroid/media/RingtoneManager;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1826
    .local v15, "absolutePath":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    .line 1827
    .local v16, "resolver":Landroid/content/ContentResolver;
    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v8

    .line 1828
    .local v8, "projection":[Ljava/lang/String;
    const-string v17, "_data=?"

    .line 1830
    .local v17, "where":Ljava/lang/String;
    :try_start_7e
    const-string v9, "_data=?"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    move-object/from16 v6, v16

    move-object v7, v12

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_8c} :catch_bb

    move-object v6, v0

    .line 1832
    .local v6, "cs":Landroid/database/Cursor;
    if-eqz v6, :cond_af

    :try_start_8f
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_af

    .line 1833
    const-string v0, "path and URI match to each other "

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9a
    .catchall {:try_start_8f .. :try_end_9a} :catchall_a1

    .line 1834
    nop

    .line 1836
    if-eqz v6, :cond_a0

    :try_start_9d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a0} :catch_bb

    .line 1834
    :cond_a0
    return v3

    .line 1830
    :catchall_a1
    move-exception v0

    move-object v7, v0

    if-eqz v6, :cond_ae

    :try_start_a5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_a8
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_a9

    goto :goto_ae

    :catchall_a9
    move-exception v0

    move-object v9, v0

    :try_start_ab
    invoke-virtual {v7, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "settingKey":Ljava/lang/String;
    .end local v2    # "settingKeyPath":Ljava/lang/String;
    .end local v4    # "settingValue":Ljava/lang/String;
    .end local v8    # "projection":[Ljava/lang/String;
    .end local v12    # "ringtoneUri":Landroid/net/Uri;
    .end local v14    # "ringtonePath":Ljava/lang/String;
    .end local v15    # "absolutePath":Ljava/lang/String;
    .end local v16    # "resolver":Landroid/content/ContentResolver;
    .end local v17    # "where":Ljava/lang/String;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "type":I
    :cond_ae
    :goto_ae
    throw v7

    .line 1836
    .restart local v1    # "settingKey":Ljava/lang/String;
    .restart local v2    # "settingKeyPath":Ljava/lang/String;
    .restart local v4    # "settingValue":Ljava/lang/String;
    .restart local v8    # "projection":[Ljava/lang/String;
    .restart local v12    # "ringtoneUri":Landroid/net/Uri;
    .restart local v14    # "ringtonePath":Ljava/lang/String;
    .restart local v15    # "absolutePath":Ljava/lang/String;
    .restart local v16    # "resolver":Landroid/content/ContentResolver;
    .restart local v17    # "where":Ljava/lang/String;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "type":I
    :cond_af
    if-eqz v6, :cond_b4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_ab .. :try_end_b4} :catch_bb

    .line 1839
    .end local v6    # "cs":Landroid/database/Cursor;
    :cond_b4
    nop

    .line 1840
    const-string v0, "path and URI don\'t match"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    return v13

    .line 1836
    :catch_bb
    move-exception v0

    .line 1837
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkDefaultRingtoneProperUri : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    return v3

    .line 1804
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v8    # "projection":[Ljava/lang/String;
    .end local v14    # "ringtonePath":Ljava/lang/String;
    .end local v15    # "absolutePath":Ljava/lang/String;
    .end local v16    # "resolver":Landroid/content/ContentResolver;
    .end local v17    # "where":Ljava/lang/String;
    :cond_d3
    :goto_d3
    return v3

    .line 1792
    .end local v4    # "settingValue":Ljava/lang/String;
    .end local v12    # "ringtoneUri":Landroid/net/Uri;
    :cond_d4
    :goto_d4
    return v3
.end method

.method private static computeDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .line 1392
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultRingtoneFilename(I)Ljava/lang/String;

    move-result-object v0

    .line 1393
    .local v0, "filename":Ljava/lang/String;
    invoke-static {p1}, Landroid/media/RingtoneManager;->getQueryStringForType(I)Ljava/lang/String;

    move-result-object v1

    .line 1394
    .local v1, "whichAudio":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_display_name=? AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1395
    .local v2, "where":Ljava/lang/String;
    sget-object v9, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 1396
    .local v9, "baseUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "_id"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v5

    const-string v4, "1"

    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v4, v9

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 1400
    .local v3, "cursor":Landroid/database/Cursor;
    :try_start_3a
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_58

    .line 1401
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1402
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v9, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 1401
    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->canonicalizeOrElse(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4
    :try_end_51
    .catchall {:try_start_3a .. :try_end_51} :catchall_5f

    .line 1403
    .local v4, "ringtoneUri":Landroid/net/Uri;
    nop

    .line 1405
    if-eqz v3, :cond_57

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1403
    :cond_57
    return-object v4

    .line 1405
    .end local v4    # "ringtoneUri":Landroid/net/Uri;
    :cond_58
    if-eqz v3, :cond_5d

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1407
    .end local v3    # "cursor":Landroid/database/Cursor;
    :cond_5d
    const/4 v3, 0x0

    return-object v3

    .line 1396
    .restart local v3    # "cursor":Landroid/database/Cursor;
    :catchall_5f
    move-exception v4

    if-eqz v3, :cond_6a

    :try_start_62
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_66

    goto :goto_6a

    :catchall_66
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6a
    :goto_6a
    throw v4
.end method

.method private static constructBooleanTrueWhereClause(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 712
    .local p0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 714
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 715
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_14
    if-ltz v1, :cond_28

    .line 718
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "=1 or "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 717
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 721
    .end local v1    # "i":I
    :cond_28
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_37

    .line 723
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 726
    :cond_37
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static createPackageContextAsUser(Landroid/content/Context;I)Landroid/content/Context;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 1338
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1339
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 1338
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    .line 1340
    :catch_e
    move-exception v0

    .line 1341
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v1, "RingtoneManager"

    const-string v2, "Unable to create package context"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1342
    const/4 v1, 0x0

    return-object v1
.end method

.method private static dumpCallStack(Landroid/content/Context;Ljava/lang/String;ILandroid/net/Uri;)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "uri"    # Landroid/net/Uri;

    .line 1978
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/os/Debug;->getCallers(II)Ljava/lang/String;

    move-result-object v0

    .line 1980
    .local v0, "caller":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1981
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string v2, " u/pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1982
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1983
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1984
    const-string v3, " URI:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1985
    const-string v3, " type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1986
    const-string v3, " user:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1987
    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1989
    const-string v2, "audio"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 1990
    .local v2, "b":Landroid/os/IBinder;
    invoke-static {v2}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v3

    .line 1992
    .local v3, "service":Landroid/media/IAudioService;
    :try_start_5c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/media/IAudioService;->recordRingtoneChanger(Ljava/lang/String;)V
    :try_end_63
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_63} :catch_64

    .line 1995
    goto :goto_6c

    .line 1993
    :catch_64
    move-exception v4

    .line 1994
    .local v4, "e":Landroid/os/RemoteException;
    const-string v5, "RingtoneManager"

    const-string v6, "Unable to dumpCallStack."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_6c
    return-void
.end method

.method public static ensureDefaultRingtones(Landroid/content/Context;)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1357
    const-string v0, "ensureDefaultRingtones()"

    const-string v1, "RingtoneManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    const/16 v0, 0x80

    const/16 v2, 0x100

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x4

    filled-new-array {v3, v4, v5, v0, v2}, [I

    move-result-object v0

    const/4 v2, 0x0

    move v4, v2

    :goto_14
    const/4 v5, 0x5

    if-ge v4, v5, :cond_72

    aget v5, v0, v4

    .line 1369
    .local v5, "type":I
    invoke-static {v5}, Landroid/media/RingtoneManager;->getDefaultRingtoneSetting(I)Ljava/lang/String;

    move-result-object v6

    .line 1370
    .local v6, "setting":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v6, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    const-string v8, "ensureDefaultRingtones( [ type : "

    if-eqz v7, :cond_44

    .line 1371
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ] continue )"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    goto :goto_6f

    .line 1376
    :cond_44
    invoke-static {p0, v5}, Landroid/media/RingtoneManager;->computeDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v7

    .line 1377
    .local v7, "ringtoneUri":Landroid/net/Uri;
    if-eqz v7, :cond_55

    .line 1378
    invoke-static {p0, v5, v7}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 1379
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_6f

    .line 1381
    :cond_55
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ] ringtoneUri is null )"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    .end local v5    # "type":I
    .end local v6    # "setting":Ljava/lang/String;
    .end local v7    # "ringtoneUri":Landroid/net/Uri;
    :goto_6f
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 1384
    :cond_72
    return-void
.end method

.method private excludedRingtonesWhereClauseForCSC()Ljava/lang/String;
    .registers 7

    .line 1917
    invoke-direct {p0}, Landroid/media/RingtoneManager;->getExcludedRingtoneTitles()Ljava/util/List;

    move-result-object v0

    .line 1918
    .local v0, "excludedRingtones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_d

    .line 1919
    const-string v1, ""

    return-object v1

    .line 1922
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1923
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, " and ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1924
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_51

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1925
    .local v3, "displayName":Ljava/lang/String;
    const-string v4, "_display_name"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1926
    const-string v4, "!="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1927
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1928
    const-string v4, " and "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1929
    .end local v3    # "displayName":Ljava/lang/String;
    goto :goto_1b

    .line 1931
    :cond_51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1932
    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1933
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private excludedRingtonesWhereClauseForOpenTheme()Ljava/lang/String;
    .registers 4

    .line 2092
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2093
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, " AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2094
    const-string v1, "_display_name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2095
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " not like \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/media/RingtoneManager;->PREFIX_OPEN_THEME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2096
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getActualAchRingtoneUriIfAvailable(Landroid/content/Context;Landroid/net/Uri;Landroid/os/UserHandle;)Landroid/net/Uri;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 2121
    const/4 v0, 0x0

    .line 2123
    .local v0, "ringtoneUri":Landroid/net/Uri;
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2124
    sget-object p2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 2126
    :cond_b
    invoke-static {p0, p2}, Landroid/media/RingtoneManager;->getContextForUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    .line 2127
    .local v1, "userContext":Landroid/content/Context;
    invoke-static {v1}, Landroid/media/RingtoneManager;->isAchAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 2128
    const/4 v2, 0x2

    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 2129
    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_38

    .line 2131
    :cond_25
    nop

    .line 2132
    const/16 v2, 0x100

    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 2131
    invoke-virtual {p1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 2133
    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_38

    .line 2136
    :cond_37
    move-object v0, p1

    .line 2139
    :cond_38
    :goto_38
    return-object v0
.end method

.method public static getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .line 880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getActualDefaultRingtoneUri  type    :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RingtoneManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->checkDefaultRingtoneProperUri(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_21

    .line 883
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->setRingtonesAsInitValue(Landroid/content/Context;I)V

    .line 887
    :cond_21
    invoke-static {p1}, Landroid/media/RingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    .line 888
    .local v0, "setting":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_29

    return-object v1

    .line 889
    :cond_29
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 890
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 889
    invoke-static {v2, v0, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 891
    .local v2, "uriString":Ljava/lang/String;
    if-eqz v2, :cond_3b

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 896
    .local v1, "ringtoneUri":Landroid/net/Uri;
    :cond_3b
    invoke-static {v1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v3

    .line 897
    .local v3, "cpUserid":I
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    .line 898
    .local v4, "ctUserid":I
    if-eqz v1, :cond_4f

    if-eqz v3, :cond_49

    if-nez v4, :cond_4f

    :cond_49
    if-ne v3, v4, :cond_4f

    .line 901
    invoke-static {v1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 910
    .end local v3    # "cpUserid":I
    .end local v4    # "ctUserid":I
    :cond_4f
    return-object v1
.end method

.method public static getCacheForType(I)Landroid/net/Uri;
    .registers 2
    .param p0, "type"    # I

    .line 1170
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getCacheForType(II)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getCacheForType(II)Landroid/net/Uri;
    .registers 3
    .param p0, "type"    # I
    .param p1, "userId"    # I

    .line 1175
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_b

    .line 1176
    sget-object v0, Landroid/provider/Settings$System;->RINGTONE_CACHE_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 1177
    :cond_b
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_16

    .line 1178
    sget-object v0, Landroid/provider/Settings$System;->NOTIFICATION_SOUND_CACHE_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 1180
    :cond_16
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_21

    .line 1181
    sget-object v0, Landroid/provider/Settings$System;->ALARM_ALERT_CACHE_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 1183
    :cond_21
    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_2c

    .line 1184
    sget-object v0, Landroid/provider/Settings$System;->RINGTONE2_CACHE_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 1185
    :cond_2c
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_37

    .line 1186
    sget-object v0, Landroid/provider/Settings$System;->NOTIFICATION_SOUND2_CACHE_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 1189
    :cond_37
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getContextForUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 2102
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_9} :catch_a

    return-object v0

    .line 2103
    :catch_a
    move-exception v0

    .line 2104
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object p0
.end method

.method private static getDefaultRingtoneFilename(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .line 1424
    sparse-switch p0, :sswitch_data_2c

    .line 1432
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1430
    :sswitch_9
    const-string v0, "ro.config.notification_sound_2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1429
    :sswitch_10
    const-string v0, "ro.config.ringtone_2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1427
    :sswitch_17
    const-string v0, "ro.config.alarm_alert"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1426
    :sswitch_1e
    const-string v0, "ro.config.notification_sound"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1425
    :sswitch_25
    const-string v0, "ro.config.ringtone"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_data_2c
    .sparse-switch
        0x1 -> :sswitch_25
        0x2 -> :sswitch_1e
        0x4 -> :sswitch_17
        0x80 -> :sswitch_10
        0x100 -> :sswitch_9
    .end sparse-switch
.end method

.method private static getDefaultRingtoneSetting(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .line 1411
    sparse-switch p0, :sswitch_data_18

    .line 1419
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1417
    :sswitch_9
    const-string v0, "notification_sound_2_set"

    return-object v0

    .line 1416
    :sswitch_c
    const-string v0, "ringtone_2_set"

    return-object v0

    .line 1414
    :sswitch_f
    const-string v0, "alarm_alert_set"

    return-object v0

    .line 1413
    :sswitch_12
    const-string v0, "notification_sound_set"

    return-object v0

    .line 1412
    :sswitch_15
    const-string v0, "ringtone_set"

    return-object v0

    :sswitch_data_18
    .sparse-switch
        0x1 -> :sswitch_15
        0x2 -> :sswitch_12
        0x4 -> :sswitch_f
        0x80 -> :sswitch_c
        0x100 -> :sswitch_9
    .end sparse-switch
.end method

.method private static getDefaultSettingSound(I)Landroid/net/Uri;
    .registers 2
    .param p0, "type"    # I

    .line 1654
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_7

    .line 1655
    sget-object v0, Landroid/media/RingtoneManager;->mDefaultRingtoneUri:Landroid/net/Uri;

    return-object v0

    .line 1657
    :cond_7
    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_e

    .line 1658
    sget-object v0, Landroid/media/RingtoneManager;->mDefaultRingtone2Uri:Landroid/net/Uri;

    return-object v0

    .line 1659
    :cond_e
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_15

    .line 1660
    sget-object v0, Landroid/media/RingtoneManager;->mDefaultNotificationUri:Landroid/net/Uri;

    return-object v0

    .line 1661
    :cond_15
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_1c

    .line 1662
    sget-object v0, Landroid/media/RingtoneManager;->mDefaultNotification2Uri:Landroid/net/Uri;

    return-object v0

    .line 1664
    :cond_1c
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_23

    .line 1665
    sget-object v0, Landroid/media/RingtoneManager;->mDefaultAlarmUri:Landroid/net/Uri;

    return-object v0

    .line 1667
    :cond_23
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDefaultSoundUri(Landroid/content/Context;I)Landroid/net/Uri;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .line 1677
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1678
    .local v0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1679
    .local v1, "defaultSoundTitle":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1681
    .local v2, "omcSoundFile":Ljava/lang/String;
    and-int/lit8 v3, p1, 0x1

    const/4 v4, 0x0

    const-string v5, "ro.config.ringtone"

    const-string v6, "is_ringtone"

    const-string v7, "RingtoneManager"

    if-eqz v3, :cond_20

    .line 1682
    sget-object v3, Landroid/media/RingtoneManager;->mDefaultRingtoneUri:Landroid/net/Uri;

    if-eqz v3, :cond_17

    .line 1683
    return-object v3

    .line 1685
    :cond_17
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1686
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_98

    .line 1688
    :cond_20
    and-int/lit16 v3, p1, 0x80

    if-eqz v3, :cond_46

    .line 1689
    sget-object v3, Landroid/media/RingtoneManager;->mDefaultRingtone2Uri:Landroid/net/Uri;

    if-eqz v3, :cond_29

    .line 1690
    return-object v3

    .line 1692
    :cond_29
    const-string v3, "ro.config.ringtone_2"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1693
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_42

    .line 1694
    const-string v3, "ro.config.ringtone_2 is not set"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1697
    :cond_42
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_98

    .line 1698
    :cond_46
    and-int/lit8 v3, p1, 0x2

    const-string v5, "is_notification"

    const-string v8, "ro.config.notification_sound"

    if-eqz v3, :cond_5b

    .line 1699
    sget-object v3, Landroid/media/RingtoneManager;->mDefaultNotificationUri:Landroid/net/Uri;

    if-eqz v3, :cond_53

    .line 1700
    return-object v3

    .line 1702
    :cond_53
    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1703
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_98

    .line 1704
    :cond_5b
    and-int/lit16 v3, p1, 0x100

    if-eqz v3, :cond_81

    .line 1705
    sget-object v3, Landroid/media/RingtoneManager;->mDefaultNotification2Uri:Landroid/net/Uri;

    if-eqz v3, :cond_64

    .line 1706
    return-object v3

    .line 1708
    :cond_64
    const-string v3, "ro.config.notification_sound_2"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1709
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7d

    .line 1710
    const-string v3, "ro.config.notification_sound_2 is not set"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1711
    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1713
    :cond_7d
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_98

    .line 1715
    :cond_81
    and-int/lit8 v3, p1, 0x4

    if-eqz v3, :cond_187

    .line 1716
    sget-object v3, Landroid/media/RingtoneManager;->mDefaultAlarmUri:Landroid/net/Uri;

    if-eqz v3, :cond_8a

    .line 1717
    return-object v3

    .line 1719
    :cond_8a
    const-string v3, "ro.config.alarm_alert"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1720
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1721
    const-string v3, "is_alarm"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1728
    :goto_98
    invoke-static {p1}, Landroid/media/RingtoneManager;->getOMCRingtonePropertyName(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, ""

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1729
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a9

    .line 1730
    move-object v1, v2

    .line 1734
    :cond_a9
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_ba

    .line 1735
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1737
    :cond_ba
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Default ringtone/notification sound is :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    const/4 v3, 0x0

    .line 1740
    .local v3, "internalCursor":Landroid/database/Cursor;
    const/4 v5, 0x0

    .line 1743
    .local v5, "tempUri":Landroid/net/Uri;
    :try_start_d2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const-string v11, "_id"

    aput-object v11, v10, v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1746
    invoke-static {v0}, Landroid/media/RingtoneManager;->constructBooleanTrueWhereClause(Ljava/util/List;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " and "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_data"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " like \'%/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".___\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const-string v13, "title_key"

    .line 1743
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_113} :catch_176
    .catchall {:try_start_d2 .. :try_end_113} :catchall_174

    move-object v3, v8

    .line 1750
    if-nez v3, :cond_11d

    .line 1751
    nop

    .line 1780
    if-eqz v3, :cond_11c

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1751
    :cond_11c
    return-object v4

    .line 1754
    :cond_11d
    :try_start_11d
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1756
    :goto_120
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_158

    .line 1757
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1758
    .local v8, "_id":J
    sget-object v4, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    move-object v5, v4

    .line 1760
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_138

    .line 1761
    sput-object v5, Landroid/media/RingtoneManager;->mDefaultRingtoneUri:Landroid/net/Uri;

    goto :goto_153

    .line 1763
    :cond_138
    and-int/lit16 v4, p1, 0x80

    if-eqz v4, :cond_13f

    .line 1764
    sput-object v5, Landroid/media/RingtoneManager;->mDefaultRingtone2Uri:Landroid/net/Uri;

    goto :goto_153

    .line 1765
    :cond_13f
    and-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_146

    .line 1766
    sput-object v5, Landroid/media/RingtoneManager;->mDefaultNotificationUri:Landroid/net/Uri;

    goto :goto_153

    .line 1767
    :cond_146
    and-int/lit16 v4, p1, 0x100

    if-eqz v4, :cond_14d

    .line 1768
    sput-object v5, Landroid/media/RingtoneManager;->mDefaultNotification2Uri:Landroid/net/Uri;

    goto :goto_153

    .line 1770
    :cond_14d
    and-int/lit8 v4, p1, 0x4

    if-eqz v4, :cond_153

    .line 1771
    sput-object v5, Landroid/media/RingtoneManager;->mDefaultAlarmUri:Landroid/net/Uri;

    .line 1774
    :cond_153
    :goto_153
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 1775
    nop

    .end local v8    # "_id":J
    goto :goto_120

    .line 1776
    :cond_158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Default ringtone/notification\'s uri found : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16e
    .catch Ljava/lang/Exception; {:try_start_11d .. :try_end_16e} :catch_176
    .catchall {:try_start_11d .. :try_end_16e} :catchall_174

    .line 1780
    if-eqz v3, :cond_180

    :goto_170
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_180

    :catchall_174
    move-exception v4

    goto :goto_181

    .line 1777
    :catch_176
    move-exception v4

    .line 1778
    .local v4, "ex":Ljava/lang/Exception;
    :try_start_177
    const-string v6, "Can\'t read ro.config value"

    invoke-static {v7, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_17c
    .catchall {:try_start_177 .. :try_end_17c} :catchall_174

    .line 1780
    nop

    .end local v4    # "ex":Ljava/lang/Exception;
    if-eqz v3, :cond_180

    goto :goto_170

    .line 1782
    :cond_180
    :goto_180
    return-object v5

    .line 1780
    :goto_181
    if-eqz v3, :cond_186

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1781
    :cond_186
    throw v4

    .line 1723
    .end local v3    # "internalCursor":Landroid/database/Cursor;
    .end local v5    # "tempUri":Landroid/net/Uri;
    :cond_187
    return-object v4
.end method

.method public static getDefaultType(Landroid/net/Uri;)I
    .registers 4
    .param p0, "defaultRingtoneUri"    # Landroid/net/Uri;

    .line 1212
    invoke-static {p0}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    .line 1213
    const/4 v0, -0x1

    if-nez p0, :cond_8

    .line 1214
    return v0

    .line 1215
    :cond_8
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    .line 1216
    return v2

    .line 1217
    :cond_12
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 1218
    const/4 v0, 0x2

    return v0

    .line 1219
    :cond_1c
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1220
    const/4 v0, 0x4

    return v0

    .line 1222
    :cond_26
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 1223
    const/16 v0, 0x80

    return v0

    .line 1224
    :cond_31
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_3:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 1225
    return v2

    .line 1226
    :cond_3a
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI_2:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 1227
    const/16 v0, 0x100

    return v0

    .line 1230
    :cond_45
    return v0
.end method

.method public static getDefaultUri(I)Landroid/net/Uri;
    .registers 2
    .param p0, "type"    # I

    .line 1244
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_7

    .line 1245
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    return-object v0

    .line 1246
    :cond_7
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_e

    .line 1247
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    return-object v0

    .line 1248
    :cond_e
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_15

    .line 1249
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    return-object v0

    .line 1251
    :cond_15
    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_1c

    .line 1252
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI_2:Landroid/net/Uri;

    return-object v0

    .line 1253
    :cond_1c
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_23

    .line 1254
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI_2:Landroid/net/Uri;

    return-object v0

    .line 1257
    :cond_23
    const/4 v0, 0x0

    return-object v0
.end method

.method private getExcludedRingtoneTitles()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1903
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1904
    .local v0, "excludeRingtones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1905
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v2

    .line 1907
    .local v2, "service":Landroid/media/IAudioService;
    nop

    .line 1908
    :try_start_f
    iget v3, p0, Landroid/media/RingtoneManager;->mType:I

    and-int/lit16 v3, v3, 0x102

    if-eqz v3, :cond_17

    .line 1909
    const/4 v3, 0x2

    goto :goto_18

    :cond_17
    const/4 v3, 0x1

    .line 1907
    :goto_18
    invoke-interface {v2, v3}, Landroid/media/IAudioService;->getExcludedRingtoneTitles(I)Ljava/util/List;

    move-result-object v3
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_1c} :catch_1e

    move-object v0, v3

    .line 1912
    goto :goto_26

    .line 1910
    :catch_1e
    move-exception v3

    .line 1911
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "RingtoneManager"

    const-string v5, "Unable to get excluded ringtones."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_26
    return-object v0
.end method

.method private static final getExternalDirectoryForType(I)Ljava/lang/String;
    .registers 4
    .param p0, "type"    # I

    .line 1112
    sparse-switch p0, :sswitch_data_26

    .line 1122
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported ringtone type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1120
    :sswitch_1c
    sget-object v0, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    return-object v0

    .line 1118
    :sswitch_1f
    sget-object v0, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    return-object v0

    .line 1115
    :sswitch_22
    sget-object v0, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    return-object v0

    nop

    :sswitch_data_26
    .sparse-switch
        0x1 -> :sswitch_22
        0x2 -> :sswitch_1f
        0x4 -> :sswitch_1c
        0x80 -> :sswitch_22
        0x100 -> :sswitch_1f
    .end sparse-switch
.end method

.method private getInternalRingtones()Landroid/database/Cursor;
    .registers 9

    .line 654
    iget-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    invoke-static {v0}, Landroid/media/RingtoneManager;->constructBooleanTrueWhereClause(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 656
    .local v0, "whereClause":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/media/RingtoneManager;->excludedRingtonesWhereClauseForCSC()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 659
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/media/RingtoneManager;->excludedRingtonesWhereClauseForOpenTheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 661
    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Landroid/media/RingtoneManager;->INTERNAL_COLUMNS:[Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "title_key"

    move-object v2, p0

    move-object v5, v0

    invoke-direct/range {v2 .. v7}, Landroid/media/RingtoneManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 665
    .local v1, "res":Landroid/database/Cursor;
    new-instance v2, Landroid/media/ExternalRingtonesCursorWrapper;

    sget-object v3, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v1, v3}, Landroid/media/ExternalRingtonesCursorWrapper;-><init>(Landroid/database/Cursor;Landroid/net/Uri;)V

    return-object v2
.end method

.method private getMediaRingtones()Landroid/database/Cursor;
    .registers 4

    .line 669
    iget-object v0, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/media/RingtoneManager;->getMediaRingtones(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    .line 670
    .local v0, "res":Landroid/database/Cursor;
    new-instance v1, Landroid/media/ExternalRingtonesCursorWrapper;

    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v0, v2}, Landroid/media/ExternalRingtonesCursorWrapper;-><init>(Landroid/database/Cursor;Landroid/net/Uri;)V

    return-object v1
.end method

.method private getMediaRingtones(Landroid/content/Context;)Landroid/database/Cursor;
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .line 677
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/media/RingtoneManager;->MEDIA_COLUMNS:[Ljava/lang/String;

    iget-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 679
    invoke-static {v0}, Landroid/media/RingtoneManager;->constructBooleanTrueWhereClause(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "title_key"

    .line 677
    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/RingtoneManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static getOMCRingtonePropertyName(I)Ljava/lang/String;
    .registers 3
    .param p0, "type"    # I

    .line 1942
    const-string v0, ""

    .line 1943
    .local v0, "propName":Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p0, v1, :cond_8

    .line 1944
    const-string v0, "persist.sys.omc.ringtone"

    goto :goto_21

    .line 1945
    :cond_8
    const/16 v1, 0x80

    if-ne p0, v1, :cond_f

    .line 1946
    const-string v0, "persist.sys.omc.ringtone_2"

    goto :goto_21

    .line 1947
    :cond_f
    const/4 v1, 0x2

    if-ne p0, v1, :cond_15

    .line 1948
    const-string v0, "persist.sys.omc.notification"

    goto :goto_21

    .line 1949
    :cond_15
    const/16 v1, 0x100

    if-ne p0, v1, :cond_1c

    .line 1950
    const-string v0, "persist.sys.omc.notification_2"

    goto :goto_21

    .line 1951
    :cond_1c
    const/4 v1, 0x4

    if-ne p0, v1, :cond_21

    .line 1952
    const-string v0, "persist.sys.omc.alarm"

    .line 1954
    :cond_21
    :goto_21
    return-object v0
.end method

.method private getOpenThemeRingtone()Landroid/database/Cursor;
    .registers 12

    .line 2014
    const/4 v0, 0x0

    .line 2015
    .local v0, "themeCursor":Landroid/database/MatrixCursor;
    iget-object v1, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    const v2, 0x1040c67

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2020
    .local v1, "themeTitle":Ljava/lang/String;
    iget v2, p0, Landroid/media/RingtoneManager;->mType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1d

    const/16 v3, 0x100

    if-ne v2, v3, :cond_14

    goto :goto_1d

    .line 2022
    :cond_14
    const/4 v3, 0x4

    if-ne v2, v3, :cond_1a

    .line 2023
    const-string v2, "is_alarm"

    .local v2, "column":Ljava/lang/String;
    goto :goto_1f

    .line 2025
    .end local v2    # "column":Ljava/lang/String;
    :cond_1a
    const-string v2, "is_ringtone"

    .restart local v2    # "column":Ljava/lang/String;
    goto :goto_1f

    .line 2021
    .end local v2    # "column":Ljava/lang/String;
    :cond_1d
    :goto_1d
    const-string v2, "is_notification"

    .line 2027
    .restart local v2    # "column":Ljava/lang/String;
    :goto_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(_display_name like \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/media/RingtoneManager;->PREFIX_OPEN_THEME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\') and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2030
    .local v3, "dbWhere":Ljava/lang/String;
    :try_start_44
    iget-object v4, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v10, Landroid/media/RingtoneManager;->INTERNAL_COLUMNS:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, v10

    move-object v7, v3

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_56} :catch_95

    .line 2032
    .local v4, "tempCursor":Landroid/database/Cursor;
    if-eqz v4, :cond_8f

    :try_start_58
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-eqz v5, :cond_8f

    .line 2033
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2035
    new-instance v5, Landroid/database/MatrixCursor;

    invoke-direct {v5, v10}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    move-object v0, v5

    .line 2036
    array-length v5, v10

    new-array v5, v5, [Ljava/lang/String;

    .line 2037
    .local v5, "themeColumns":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_6b
    sget-object v7, Landroid/media/RingtoneManager;->INTERNAL_COLUMNS:[Ljava/lang/String;

    array-length v7, v7

    if-ge v6, v7, :cond_7f

    .line 2038
    const/4 v7, 0x1

    if-ne v6, v7, :cond_76

    .line 2039
    aput-object v1, v5, v6

    goto :goto_7c

    .line 2041
    :cond_76
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 2037
    :goto_7c
    add-int/lit8 v6, v6, 0x1

    goto :goto_6b

    .line 2044
    .end local v6    # "i":I
    :cond_7f
    invoke-virtual {v0, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V
    :try_end_82
    .catchall {:try_start_58 .. :try_end_82} :catchall_83

    goto :goto_8f

    .line 2030
    .end local v5    # "themeColumns":[Ljava/lang/String;
    :catchall_83
    move-exception v5

    if-eqz v4, :cond_8e

    :try_start_86
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_89
    .catchall {:try_start_86 .. :try_end_89} :catchall_8a

    goto :goto_8e

    :catchall_8a
    move-exception v6

    :try_start_8b
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "themeCursor":Landroid/database/MatrixCursor;
    .end local v1    # "themeTitle":Ljava/lang/String;
    .end local v2    # "column":Ljava/lang/String;
    .end local v3    # "dbWhere":Ljava/lang/String;
    .end local p0    # "this":Landroid/media/RingtoneManager;
    :cond_8e
    :goto_8e
    throw v5

    .line 2046
    .restart local v0    # "themeCursor":Landroid/database/MatrixCursor;
    .restart local v1    # "themeTitle":Ljava/lang/String;
    .restart local v2    # "column":Ljava/lang/String;
    .restart local v3    # "dbWhere":Ljava/lang/String;
    .restart local p0    # "this":Landroid/media/RingtoneManager;
    :cond_8f
    :goto_8f
    if-eqz v4, :cond_94

    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_94} :catch_95

    .line 2048
    .end local v4    # "tempCursor":Landroid/database/Cursor;
    :cond_94
    goto :goto_9d

    .line 2046
    :catch_95
    move-exception v4

    .line 2047
    .local v4, "ex":Ljava/lang/Exception;
    const-string v5, "RingtoneManager"

    const-string v6, "DB exception"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2049
    .end local v4    # "ex":Ljava/lang/Exception;
    :goto_9d
    if-eqz v0, :cond_a7

    new-instance v4, Landroid/media/ExternalRingtonesCursorWrapper;

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v4, v0, v5}, Landroid/media/ExternalRingtonesCursorWrapper;-><init>(Landroid/database/Cursor;Landroid/net/Uri;)V

    goto :goto_a8

    .line 2050
    :cond_a7
    const/4 v4, 0x0

    .line 2049
    :goto_a8
    return-object v4
.end method

.method private getParentProfileRingtones()Landroid/database/Cursor;
    .registers 8

    .line 503
    iget-object v0, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 504
    .local v0, "um":Landroid/os/UserManager;
    iget-object v1, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 505
    .local v1, "parentInfo":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_38

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    iget-object v3, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    if-eq v2, v3, :cond_38

    .line 506
    iget-object v2, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->createPackageContextAsUser(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v2

    .line 507
    .local v2, "parentContext":Landroid/content/Context;
    if-eqz v2, :cond_38

    .line 511
    invoke-direct {p0, v2}, Landroid/media/RingtoneManager;->getMediaRingtones(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v3

    .line 512
    .local v3, "res":Landroid/database/Cursor;
    new-instance v4, Landroid/media/ExternalRingtonesCursorWrapper;

    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget v6, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5, v6}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Landroid/media/ExternalRingtonesCursorWrapper;-><init>(Landroid/database/Cursor;Landroid/net/Uri;)V

    return-object v4

    .line 516
    .end local v2    # "parentContext":Landroid/content/Context;
    .end local v3    # "res":Landroid/database/Cursor;
    :cond_38
    const/4 v2, 0x0

    return-object v2
.end method

.method private static getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "key"    # Ljava/lang/String;

    .line 1958
    const/4 v0, 0x0

    if-eqz p0, :cond_d

    if-nez p1, :cond_6

    goto :goto_d

    .line 1962
    :cond_6
    :try_start_6
    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_6 .. :try_end_a} :catch_b

    return-object v0

    .line 1963
    :catch_b
    move-exception v1

    .line 1964
    .local v1, "e":Ljava/lang/UnsupportedOperationException;
    return-object v0

    .line 1959
    .end local v1    # "e":Ljava/lang/UnsupportedOperationException;
    :cond_d
    :goto_d
    return-object v0
.end method

.method private static getQueryStringForType(I)Ljava/lang/String;
    .registers 3
    .param p0, "type"    # I

    .line 1437
    const-string v0, "is_notification"

    const-string v1, "is_ringtone"

    sparse-switch p0, :sswitch_data_12

    .line 1446
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1444
    :sswitch_d
    return-object v0

    .line 1443
    :sswitch_e
    return-object v1

    .line 1440
    :sswitch_f
    return-object v1

    .line 1439
    :sswitch_10
    return-object v0

    .line 1438
    :sswitch_11
    return-object v1

    :sswitch_data_12
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_10
        0x4 -> :sswitch_f
        0x80 -> :sswitch_e
        0x100 -> :sswitch_d
    .end sparse-switch
.end method

.method public static getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .line 765
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;IZ)Landroid/media/Ringtone;

    move-result-object v0

    return-object v0
.end method

.method private static getRingtone(Landroid/content/Context;Landroid/net/Uri;II)Landroid/media/Ringtone;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;
    .param p2, "streamType"    # I
    .param p3, "seek"    # I

    .line 1516
    :try_start_0
    new-instance v0, Landroid/media/Ringtone;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/media/Ringtone;-><init>(Landroid/content/Context;Z)V

    .line 1517
    .local v0, "r":Landroid/media/Ringtone;
    if-ltz p2, :cond_b

    .line 1518
    invoke-virtual {v0, p2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 1520
    :cond_b
    if-ltz p3, :cond_10

    .line 1521
    invoke-virtual {v0, p3}, Landroid/media/Ringtone;->setSecForSeek(I)V

    .line 1523
    :cond_10
    invoke-virtual {v0, p1}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 1524
    return-object v0

    .line 1525
    .end local v0    # "r":Landroid/media/Ringtone;
    :catch_14
    move-exception v0

    .line 1526
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open ringtone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RingtoneManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    .end local v0    # "ex":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getRingtone(Landroid/content/Context;Landroid/net/Uri;ILandroid/media/VolumeShaper$Configuration;Z)Landroid/media/Ringtone;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;
    .param p2, "streamType"    # I
    .param p3, "volumeShaperConfig"    # Landroid/media/VolumeShaper$Configuration;
    .param p4, "createLocalMediaPlayer"    # Z

    .line 844
    const-string v0, "Failed to open ringtone "

    const-string v1, "RingtoneManager"

    const/4 v2, 0x0

    :try_start_5
    new-instance v3, Landroid/media/Ringtone;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Landroid/media/Ringtone;-><init>(Landroid/content/Context;Z)V

    .line 845
    .local v3, "r":Landroid/media/Ringtone;
    if-ltz p2, :cond_10

    .line 847
    invoke-virtual {v3, p2}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 850
    :cond_10
    invoke-virtual {v3, p3}, Landroid/media/Ringtone;->setVolumeShaperConfig(Landroid/media/VolumeShaper$Configuration;)V

    .line 851
    invoke-virtual {v3, p1, p3}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;Landroid/media/VolumeShaper$Configuration;)V

    .line 852
    if-eqz p4, :cond_33

    .line 853
    invoke-virtual {v3}, Landroid/media/Ringtone;->createLocalMediaPlayer()Z

    move-result v4

    if-nez v4, :cond_33

    .line 854
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_32} :catch_34

    .line 855
    return-object v2

    .line 858
    :cond_33
    return-object v3

    .line 859
    .end local v3    # "r":Landroid/media/Ringtone;
    :catch_34
    move-exception v3

    .line 860
    .local v3, "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    .end local v3    # "ex":Ljava/lang/Exception;
    return-object v2
.end method

.method private static getRingtone(Landroid/content/Context;Landroid/net/Uri;IZ)Landroid/media/Ringtone;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;
    .param p2, "streamType"    # I
    .param p3, "createLocalMediaPlayer"    # Z

    .line 836
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;ILandroid/media/VolumeShaper$Configuration;Z)Landroid/media/Ringtone;

    move-result-object v0

    return-object v0
.end method

.method public static getRingtone(Landroid/content/Context;Landroid/net/Uri;Landroid/media/VolumeShaper$Configuration;)Landroid/media/Ringtone;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;
    .param p2, "volumeShaperConfig"    # Landroid/media/VolumeShaper$Configuration;

    .line 786
    const/4 v0, -0x1

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, p2, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;ILandroid/media/VolumeShaper$Configuration;Z)Landroid/media/Ringtone;

    move-result-object v0

    return-object v0
.end method

.method public static getRingtone(Landroid/content/Context;Landroid/net/Uri;Landroid/media/VolumeShaper$Configuration;Landroid/media/AudioAttributes;)Landroid/media/Ringtone;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;
    .param p2, "volumeShaperConfig"    # Landroid/media/VolumeShaper$Configuration;
    .param p3, "audioAttributes"    # Landroid/media/AudioAttributes;

    .line 807
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, p2, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;ILandroid/media/VolumeShaper$Configuration;Z)Landroid/media/Ringtone;

    move-result-object v0

    .line 809
    .local v0, "ringtone":Landroid/media/Ringtone;
    if-eqz v0, :cond_2b

    .line 810
    invoke-virtual {v0, p3}, Landroid/media/Ringtone;->setAudioAttributesField(Landroid/media/AudioAttributes;)V

    .line 811
    invoke-virtual {v0}, Landroid/media/Ringtone;->createLocalMediaPlayer()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 812
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open ringtone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RingtoneManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    const/4 v1, 0x0

    return-object v1

    .line 816
    :cond_2b
    return-object v0
.end method

.method public static getRingtone(Landroid/content/Context;Landroid/net/Uri;Landroid/media/VolumeShaper$Configuration;Z)Landroid/media/Ringtone;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;
    .param p2, "volumeShaperConfig"    # Landroid/media/VolumeShaper$Configuration;
    .param p3, "createLocalMediaPlayer"    # Z

    .line 796
    const/4 v0, -0x1

    invoke-static {p0, p1, v0, p2, p3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;ILandroid/media/VolumeShaper$Configuration;Z)Landroid/media/Ringtone;

    move-result-object v0

    return-object v0
.end method

.method public static getRingtoneTitleForCached(Landroid/content/Context;I)Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .line 1612
    invoke-static {p1}, Landroid/media/RingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    .line 1613
    .local v0, "setting":Ljava/lang/String;
    const v1, 0x1040c0c

    if-nez v0, :cond_e

    .line 1614
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1617
    :cond_e
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1618
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 1617
    invoke-static {v2, v0, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1619
    .local v2, "ringtone":Ljava/lang/String;
    if-nez v2, :cond_24

    .line 1620
    const v1, 0x1040c69

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1623
    :cond_24
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "title"

    invoke-static {v3, v4}, Landroid/media/RingtoneManager;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1624
    .local v3, "title":Ljava/lang/String;
    if-eqz v3, :cond_31

    .line 1625
    return-object v3

    .line 1628
    :cond_31
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected static getSettingForType(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .line 1151
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_7

    .line 1152
    const-string v0, "ringtone"

    return-object v0

    .line 1153
    :cond_7
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_e

    .line 1154
    const-string v0, "notification_sound"

    return-object v0

    .line 1155
    :cond_e
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_15

    .line 1156
    const-string v0, "alarm_alert"

    return-object v0

    .line 1158
    :cond_15
    and-int/lit16 v0, p0, 0x80

    if-eqz v0, :cond_1c

    .line 1159
    const-string v0, "ringtone_2"

    return-object v0

    .line 1160
    :cond_1c
    and-int/lit16 v0, p0, 0x100

    if-eqz v0, :cond_23

    .line 1161
    const-string v0, "notification_sound_2"

    return-object v0

    .line 1164
    :cond_23
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSettingKeyForAbsolutePath(I)Ljava/lang/String;
    .registers 4
    .param p0, "type"    # I

    .line 1589
    const-string v0, "_CONSTANT_PATH"

    .line 1590
    .local v0, "constantPath":Ljava/lang/String;
    sparse-switch p0, :sswitch_data_6c

    .line 1604
    const/4 v1, 0x0

    return-object v1

    .line 1601
    :sswitch_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification_sound_2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1599
    :sswitch_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ringtone_2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1596
    :sswitch_2f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "alarm_alert"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1594
    :sswitch_43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notification_sound"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1592
    :sswitch_57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ringtone"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_6c
    .sparse-switch
        0x1 -> :sswitch_57
        0x2 -> :sswitch_43
        0x4 -> :sswitch_2f
        0x80 -> :sswitch_1b
        0x100 -> :sswitch_7
    .end sparse-switch
.end method

.method private static getSyncHapticDbName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "soundType"    # Ljava/lang/String;

    .line 2161
    const-string v0, "ringtone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2162
    const-string v0, "sync_vibration_with_ringtone"

    return-object v0

    .line 2163
    :cond_b
    const-string v0, "ringtone_2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 2164
    const-string v0, "sync_vibration_with_ringtone_2"

    return-object v0

    .line 2165
    :cond_16
    const-string v0, "notification_sound"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 2166
    const-string v0, "notification_sound_2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto :goto_29

    .line 2169
    :cond_27
    const/4 v0, 0x0

    return-object v0

    .line 2167
    :cond_29
    :goto_29
    const-string v0, "sync_vibration_with_notification"

    return-object v0
.end method

.method private static getUriFromCursor(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 558
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->isOpenThemeRingtone(Landroid/content/Context;Landroid/database/Cursor;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_12

    .line 559
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 560
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 559
    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 561
    .local v0, "uri":Landroid/net/Uri;
    return-object v0

    .line 564
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_12
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 565
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 564
    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 566
    .restart local v0    # "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->canonicalizeOrElse(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static getValidRingtoneUri(Landroid/content/Context;)Landroid/net/Uri;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 626
    new-instance v0, Landroid/media/RingtoneManager;

    invoke-direct {v0, p0}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 628
    .local v0, "rm":Landroid/media/RingtoneManager;
    invoke-direct {v0}, Landroid/media/RingtoneManager;->getInternalRingtones()Landroid/database/Cursor;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/media/RingtoneManager;->getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    .line 630
    .local v1, "uri":Landroid/net/Uri;
    if-nez v1, :cond_17

    .line 631
    invoke-direct {v0}, Landroid/media/RingtoneManager;->getMediaRingtones()Landroid/database/Cursor;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/media/RingtoneManager;->getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    .line 634
    :cond_17
    return-object v1
.end method

.method private static getValidRingtoneUriFromCursorAndClose(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 638
    if-eqz p1, :cond_11

    .line 639
    const/4 v0, 0x0

    .line 641
    .local v0, "uri":Landroid/net/Uri;
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 642
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getUriFromCursor(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    .line 644
    :cond_d
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 646
    return-object v0

    .line 648
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public static hasHapticChannels(Landroid/content/Context;Landroid/net/Uri;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .line 1327
    invoke-static {p0, p1}, Landroid/media/AudioManager;->hasHapticChannels(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public static hasHapticChannels(Landroid/net/Uri;)Z
    .registers 2
    .param p0, "ringtoneUri"    # Landroid/net/Uri;

    .line 1316
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/media/AudioManager;->hasHapticChannels(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method private static final hidden_EXTRA_RINGTONE_AUDIO_ATTRIBUTES_FLAGS()Ljava/lang/String;
    .registers 1

    .line 1973
    const-string v0, "android.intent.extra.ringtone.AUDIO_ATTRIBUTES_FLAGS"

    return-object v0
.end method

.method private static isAchAvailable(Landroid/content/Context;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .line 2109
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/media/AudioManager;->isCurrentHapticPlaybackSupported(Z)Z

    move-result v1

    .line 2110
    .local v1, "hapticPlaybackSupported":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sync_vibration_with_notification"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_14

    move v2, v4

    goto :goto_15

    :cond_14
    move v2, v0

    .line 2112
    .local v2, "syncWithNotiSettings":Z
    :goto_15
    if-eqz v1, :cond_1a

    if-eqz v2, :cond_1a

    move v0, v4

    :cond_1a
    return v0
.end method

.method public static isDefault(Landroid/net/Uri;)Z
    .registers 3
    .param p0, "ringtoneUri"    # Landroid/net/Uri;

    .line 1199
    invoke-static {p0}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method private static isExternalRingtoneUri(Landroid/net/Uri;)Z
    .registers 2
    .param p0, "uri"    # Landroid/net/Uri;

    .line 1034
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->isRingtoneUriInStorage(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public static isInternalRingtoneUri(Landroid/net/Uri;)Z
    .registers 2
    .param p0, "uri"    # Landroid/net/Uri;

    .line 1030
    sget-object v0, Landroid/provider/MediaStore$Audio$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->isRingtoneUriInStorage(Landroid/net/Uri;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method protected static isMediaProviderUri(Landroid/net/Uri;)Z
    .registers 4
    .param p0, "uri"    # Landroid/net/Uri;

    .line 1846
    invoke-static {p0}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 1847
    .local v0, "uriWithoutUserId":Landroid/net/Uri;
    if-eqz v0, :cond_18

    .line 1848
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 1847
    :goto_19
    return v1
.end method

.method private static isOpenThemeRingtone(Landroid/content/Context;Landroid/database/Cursor;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 2054
    const v0, 0x1040c67

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2055
    .local v0, "themeTitle":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/media/RingtoneManager;->PREFIX_OPEN_THEME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_22

    .line 2056
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_22

    .line 2059
    :cond_20
    const/4 v1, 0x0

    return v1

    .line 2057
    :cond_22
    :goto_22
    return v2
.end method

.method private static isRingtoneUriInStorage(Landroid/net/Uri;Landroid/net/Uri;)Z
    .registers 5
    .param p0, "ringtone"    # Landroid/net/Uri;
    .param p1, "storage"    # Landroid/net/Uri;

    .line 1038
    invoke-static {p0}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 1039
    .local v0, "uriWithoutUserId":Landroid/net/Uri;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_14

    .line 1040
    :cond_8
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    .line 1039
    :goto_14
    return v1
.end method

.method public static openDefaultRingtoneUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/res/AssetFileDescriptor;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1275
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    .line 1276
    .local v0, "type":I
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getCacheForType(II)Landroid/net/Uri;

    move-result-object v1

    .line 1277
    .local v1, "cacheUri":Landroid/net/Uri;
    invoke-static {p0, v0}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v2

    .line 1278
    .local v2, "actualUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1280
    .local v3, "resolver":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .line 1281
    .local v4, "afd":Landroid/content/res/AssetFileDescriptor;
    const-string v5, "r"

    if-eqz v1, :cond_20

    .line 1282
    invoke-virtual {v3, v1, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    .line 1283
    if-eqz v4, :cond_20

    .line 1284
    return-object v4

    .line 1287
    :cond_20
    if-eqz v2, :cond_26

    .line 1288
    invoke-virtual {v3, v2, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    .line 1290
    :cond_26
    return-object v4
.end method

.method private static openRingtone(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1133
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1135
    .local v0, "resolver":Landroid/content/ContentResolver;
    :try_start_4
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_8
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_8} :catch_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_8} :catch_9

    return-object v1

    .line 1136
    :catch_9
    move-exception v1

    .line 1137
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open directly; attempting failover: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RingtoneManager"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    const-class v2, Landroid/media/AudioManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 1139
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v2

    .line 1141
    .local v2, "player":Landroid/media/IRingtonePlayer;
    :try_start_2e
    new-instance v3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-interface {v2, p1}, Landroid/media/IRingtonePlayer;->openRingtone(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_37} :catch_38

    return-object v3

    .line 1142
    :catch_38
    move-exception v3

    .line 1143
    .local v3, "e2":Ljava/lang/Exception;
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 735
    iget-object v6, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Landroid/media/RingtoneManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/database/Cursor;
    .registers 14
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "context"    # Landroid/content/Context;

    .line 744
    iget-object v0, p0, Landroid/media/RingtoneManager;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_e

    .line 745
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 747
    :cond_e
    invoke-virtual {p6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private static saveAbsolutePath(Landroid/content/Context;ILandroid/net/Uri;)V
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "ringtoneUri"    # Landroid/net/Uri;

    .line 1534
    const-string v0, "_data"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Save path type :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", URI : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RingtoneManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1536
    .local v1, "resolver":Landroid/content/ContentResolver;
    const/4 v3, 0x1

    :try_start_29
    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v5, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v1

    move-object v4, p2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_37} :catch_ae

    .line 1538
    .local v3, "cs":Landroid/database/Cursor;
    if-eqz v3, :cond_87

    :try_start_39
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_40

    goto :goto_87

    .line 1543
    :cond_40
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1544
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 1545
    .local v0, "index":I
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1546
    .local v4, "path":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ringtone path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1548
    new-instance v5, Landroid/net/Uri$Builder;

    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    const-string v6, "path"

    invoke-virtual {v5, v6, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    .line 1549
    .local v5, "absolutePath":Landroid/net/Uri;
    invoke-static {p1}, Landroid/media/RingtoneManager;->getSettingKeyForAbsolutePath(I)Ljava/lang/String;

    move-result-object v6

    .line 1550
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v8

    .line 1549
    invoke-static {v1, v6, v7, v8}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_7f
    .catchall {:try_start_39 .. :try_end_7f} :catchall_85

    .line 1551
    .end local v0    # "index":I
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "absolutePath":Landroid/net/Uri;
    if-eqz v3, :cond_84

    :try_start_81
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_81 .. :try_end_84} :catch_ae

    .line 1553
    .end local v3    # "cs":Landroid/database/Cursor;
    :cond_84
    goto :goto_c5

    .line 1536
    .restart local v3    # "cs":Landroid/database/Cursor;
    :catchall_85
    move-exception v0

    goto :goto_a3

    .line 1539
    :cond_87
    :goto_87
    :try_start_87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot find the "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9d
    .catchall {:try_start_87 .. :try_end_9d} :catchall_85

    .line 1551
    if-eqz v3, :cond_a2

    :try_start_9f
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a2} :catch_ae

    .line 1540
    :cond_a2
    return-void

    .line 1536
    :goto_a3
    if-eqz v3, :cond_ad

    :try_start_a5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_a8
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_a9

    goto :goto_ad

    :catchall_a9
    move-exception v4

    :try_start_aa
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "type":I
    .end local p2    # "ringtoneUri":Landroid/net/Uri;
    :cond_ad
    :goto_ad
    throw v0
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_ae} :catch_ae

    .line 1551
    .end local v3    # "cs":Landroid/database/Cursor;
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "type":I
    .restart local p2    # "ringtoneUri":Landroid/net/Uri;
    :catch_ae
    move-exception v0

    .line 1552
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveAbsolutePath "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_c5
    return-void
.end method

.method public static semGetDefaultRingtoneTitle(Landroid/content/Context;I)Ljava/lang/String;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .line 1644
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getRingtoneTitleForCached(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static semGetRingtone(Landroid/content/Context;ILandroid/net/Uri;)Landroid/media/Ringtone;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mSec"    # I
    .param p2, "ringtoneUri"    # Landroid/net/Uri;

    .line 1863
    :try_start_0
    new-instance v0, Landroid/media/Ringtone;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/media/Ringtone;-><init>(Landroid/content/Context;Z)V

    .line 1864
    .local v0, "r":Landroid/media/Ringtone;
    if-ltz p1, :cond_b

    .line 1865
    invoke-virtual {v0, p1}, Landroid/media/Ringtone;->setSecForSeek(I)V

    .line 1867
    :cond_b
    invoke-virtual {v0, p2}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 1868
    return-object v0

    .line 1869
    .end local v0    # "r":Landroid/media/Ringtone;
    :catch_f
    move-exception v0

    .line 1870
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open ringtone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RingtoneManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    .end local v0    # "ex":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "ringtoneUri"    # Landroid/net/Uri;

    .line 924
    invoke-static {p1}, Landroid/media/RingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    .line 925
    .local v0, "setting":Ljava/lang/String;
    if-nez v0, :cond_7

    return-void

    .line 927
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 930
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "com.samsung.sec.android.application.csc"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "RingtoneManager"

    if-eqz v2, :cond_25

    .line 931
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v2

    if-eqz v2, :cond_25

    .line 932
    const-string v2, "setActualDefaultRingtoneUri userId is in sub user from CscService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    return-void

    .line 937
    :cond_25
    invoke-static {p2}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_1c2

    .line 938
    invoke-static {p2}, Landroid/media/RingtoneManager;->isMediaProviderUri(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-gez v2, :cond_3d

    goto/16 :goto_1c2

    .line 943
    :cond_3d
    invoke-static {p1}, Landroid/media/RingtoneManager;->getSettingKeyForAbsolutePath(I)Ljava/lang/String;

    move-result-object v2

    .line 944
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    .line 943
    const/4 v5, 0x0

    invoke-static {v1, v2, v5, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 947
    invoke-static {p2}, Landroid/media/RingtoneManager;->isInternalRingtoneUri(Landroid/net/Uri;)Z

    move-result v2

    if-nez v2, :cond_57

    .line 948
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-static {p2, v2}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object p2

    .line 950
    :cond_57
    if-eqz p2, :cond_b1

    .line 951
    invoke-virtual {v1, p2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 952
    .local v2, "mimeType":Ljava/lang/String;
    const-string v4, "setActualDefaultRingtoneUri for URI:"

    if-nez v2, :cond_7c

    .line 953
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ignored: failure to find mimeType (no access from this context?)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    return-void

    .line 957
    :cond_7c
    const-string v6, "audio/"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b1

    const-string v6, "application/ogg"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b1

    .line 958
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ignored: associated mimeType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not an audio type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    return-void

    .line 964
    .end local v2    # "mimeType":Ljava/lang/String;
    :cond_b1
    nop

    .line 965
    if-eqz p2, :cond_b9

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_ba

    :cond_b9
    move-object v2, v5

    :goto_ba
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    .line 964
    invoke-static {v1, v0, v2, v4}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 969
    const-string v2, "Failed to cache ringtone: "

    if-eqz p2, :cond_112

    .line 970
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-static {p1, v4}, Landroid/media/RingtoneManager;->getCacheForType(II)Landroid/net/Uri;

    move-result-object v4

    .line 971
    .local v4, "cacheUri":Landroid/net/Uri;
    :try_start_cd
    invoke-static {p0, p2}, Landroid/media/RingtoneManager;->openRingtone(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_d1
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d1} :catch_fd

    .line 972
    .local v6, "in":Ljava/io/InputStream;
    :try_start_d1
    const-string v7, "wt"

    invoke-virtual {v1, v4, v7}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v7
    :try_end_d7
    .catchall {:try_start_d1 .. :try_end_d7} :catchall_f1

    .line 973
    .local v7, "out":Ljava/io/OutputStream;
    :try_start_d7
    invoke-static {v6, v7}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_da
    .catchall {:try_start_d7 .. :try_end_da} :catchall_e5

    .line 974
    if-eqz v7, :cond_df

    :try_start_dc
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_df
    .catchall {:try_start_dc .. :try_end_df} :catchall_f1

    .end local v7    # "out":Ljava/io/OutputStream;
    :cond_df
    if-eqz v6, :cond_e4

    :try_start_e1
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e4} :catch_fd

    .line 976
    .end local v6    # "in":Ljava/io/InputStream;
    :cond_e4
    goto :goto_112

    .line 971
    .restart local v6    # "in":Ljava/io/InputStream;
    .restart local v7    # "out":Ljava/io/OutputStream;
    :catchall_e5
    move-exception v8

    if-eqz v7, :cond_f0

    :try_start_e8
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_eb
    .catchall {:try_start_e8 .. :try_end_eb} :catchall_ec

    goto :goto_f0

    :catchall_ec
    move-exception v9

    :try_start_ed
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "setting":Ljava/lang/String;
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v4    # "cacheUri":Landroid/net/Uri;
    .end local v6    # "in":Ljava/io/InputStream;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "type":I
    .end local p2    # "ringtoneUri":Landroid/net/Uri;
    :cond_f0
    :goto_f0
    throw v8
    :try_end_f1
    .catchall {:try_start_ed .. :try_end_f1} :catchall_f1

    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v0    # "setting":Ljava/lang/String;
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v4    # "cacheUri":Landroid/net/Uri;
    .restart local v6    # "in":Ljava/io/InputStream;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "type":I
    .restart local p2    # "ringtoneUri":Landroid/net/Uri;
    :catchall_f1
    move-exception v7

    if-eqz v6, :cond_fc

    :try_start_f4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_f7
    .catchall {:try_start_f4 .. :try_end_f7} :catchall_f8

    goto :goto_fc

    :catchall_f8
    move-exception v8

    :try_start_f9
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "setting":Ljava/lang/String;
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v4    # "cacheUri":Landroid/net/Uri;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "type":I
    .end local p2    # "ringtoneUri":Landroid/net/Uri;
    :cond_fc
    :goto_fc
    throw v7
    :try_end_fd
    .catch Ljava/io/IOException; {:try_start_f9 .. :try_end_fd} :catch_fd

    .line 974
    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v0    # "setting":Ljava/lang/String;
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v4    # "cacheUri":Landroid/net/Uri;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "type":I
    .restart local p2    # "ringtoneUri":Landroid/net/Uri;
    :catch_fd
    move-exception v6

    .line 975
    .local v6, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    .end local v4    # "cacheUri":Landroid/net/Uri;
    .end local v6    # "e":Ljava/io/IOException;
    :cond_112
    :goto_112
    if-eqz p2, :cond_117

    .line 979
    invoke-static {p0, p1, p2}, Landroid/media/RingtoneManager;->saveAbsolutePath(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 982
    :cond_117
    sget-boolean v4, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_ACH_RINGTONE:Z

    if-eqz v4, :cond_11e

    .line 983
    invoke-static {p0, p2, v0}, Landroid/media/RingtoneManager;->turnOffSyncHapticOnCscSounds(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 986
    :cond_11e
    const-string v4, "enabled_sim2_only"

    const/4 v6, 0x0

    invoke-static {v1, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 987
    .local v4, "enabledSim2Only":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setActualDefaultRingtoneUri :: enabled sim2 only =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    const/4 v6, 0x1

    if-ne v4, v6, :cond_1c1

    .line 989
    const/16 v6, 0x80

    .line 990
    .local v6, "typeforSync":I
    const/16 v7, 0x80

    if-ne p1, v7, :cond_146

    .line 991
    const/4 v6, 0x1

    goto :goto_151

    .line 992
    :cond_146
    const/4 v7, 0x2

    if-ne p1, v7, :cond_14c

    .line 993
    const/16 v6, 0x100

    goto :goto_151

    .line 994
    :cond_14c
    const/16 v7, 0x100

    if-ne p1, v7, :cond_151

    .line 995
    const/4 v6, 0x2

    .line 998
    :cond_151
    :goto_151
    invoke-static {v6}, Landroid/media/RingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v7

    .line 999
    .local v7, "settingforSync":Ljava/lang/String;
    nop

    .line 1000
    if-eqz p2, :cond_15c

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_15c
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v8

    .line 999
    invoke-static {v1, v7, v5, v8}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1003
    const-string v5, "setRingtone"

    invoke-static {p0, v5, v6, p2}, Landroid/media/RingtoneManager;->dumpCallStack(Landroid/content/Context;Ljava/lang/String;ILandroid/net/Uri;)V

    .line 1008
    if-eqz p2, :cond_1b5

    .line 1009
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-static {v6, v5}, Landroid/media/RingtoneManager;->getCacheForType(II)Landroid/net/Uri;

    move-result-object v5

    .line 1010
    .local v5, "cacheUri":Landroid/net/Uri;
    :try_start_172
    invoke-static {p0, p2}, Landroid/media/RingtoneManager;->openRingtone(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v8
    :try_end_176
    .catch Ljava/io/IOException; {:try_start_172 .. :try_end_176} :catch_1a0
    .catch Ljava/lang/SecurityException; {:try_start_172 .. :try_end_176} :catch_1a0

    .line 1011
    .local v8, "in":Ljava/io/InputStream;
    :try_start_176
    invoke-virtual {v1, v5}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v9
    :try_end_17a
    .catchall {:try_start_176 .. :try_end_17a} :catchall_194

    .line 1012
    .local v9, "out":Ljava/io/OutputStream;
    :try_start_17a
    invoke-static {v8, v9}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_17d
    .catchall {:try_start_17a .. :try_end_17d} :catchall_188

    .line 1013
    if-eqz v9, :cond_182

    :try_start_17f
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_182
    .catchall {:try_start_17f .. :try_end_182} :catchall_194

    .end local v9    # "out":Ljava/io/OutputStream;
    :cond_182
    if-eqz v8, :cond_187

    :try_start_184
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_187
    .catch Ljava/io/IOException; {:try_start_184 .. :try_end_187} :catch_1a0
    .catch Ljava/lang/SecurityException; {:try_start_184 .. :try_end_187} :catch_1a0

    .line 1015
    .end local v8    # "in":Ljava/io/InputStream;
    :cond_187
    goto :goto_1b5

    .line 1010
    .restart local v8    # "in":Ljava/io/InputStream;
    .restart local v9    # "out":Ljava/io/OutputStream;
    :catchall_188
    move-exception v10

    if-eqz v9, :cond_193

    :try_start_18b
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_18e
    .catchall {:try_start_18b .. :try_end_18e} :catchall_18f

    goto :goto_193

    :catchall_18f
    move-exception v11

    :try_start_190
    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "setting":Ljava/lang/String;
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v4    # "enabledSim2Only":I
    .end local v5    # "cacheUri":Landroid/net/Uri;
    .end local v6    # "typeforSync":I
    .end local v7    # "settingforSync":Ljava/lang/String;
    .end local v8    # "in":Ljava/io/InputStream;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "type":I
    .end local p2    # "ringtoneUri":Landroid/net/Uri;
    :cond_193
    :goto_193
    throw v10
    :try_end_194
    .catchall {:try_start_190 .. :try_end_194} :catchall_194

    .end local v9    # "out":Ljava/io/OutputStream;
    .restart local v0    # "setting":Ljava/lang/String;
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v4    # "enabledSim2Only":I
    .restart local v5    # "cacheUri":Landroid/net/Uri;
    .restart local v6    # "typeforSync":I
    .restart local v7    # "settingforSync":Ljava/lang/String;
    .restart local v8    # "in":Ljava/io/InputStream;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "type":I
    .restart local p2    # "ringtoneUri":Landroid/net/Uri;
    :catchall_194
    move-exception v9

    if-eqz v8, :cond_19f

    :try_start_197
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_19a
    .catchall {:try_start_197 .. :try_end_19a} :catchall_19b

    goto :goto_19f

    :catchall_19b
    move-exception v10

    :try_start_19c
    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "setting":Ljava/lang/String;
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    .end local v4    # "enabledSim2Only":I
    .end local v5    # "cacheUri":Landroid/net/Uri;
    .end local v6    # "typeforSync":I
    .end local v7    # "settingforSync":Ljava/lang/String;
    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "type":I
    .end local p2    # "ringtoneUri":Landroid/net/Uri;
    :cond_19f
    :goto_19f
    throw v9
    :try_end_1a0
    .catch Ljava/io/IOException; {:try_start_19c .. :try_end_1a0} :catch_1a0
    .catch Ljava/lang/SecurityException; {:try_start_19c .. :try_end_1a0} :catch_1a0

    .line 1013
    .end local v8    # "in":Ljava/io/InputStream;
    .restart local v0    # "setting":Ljava/lang/String;
    .restart local v1    # "resolver":Landroid/content/ContentResolver;
    .restart local v4    # "enabledSim2Only":I
    .restart local v5    # "cacheUri":Landroid/net/Uri;
    .restart local v6    # "typeforSync":I
    .restart local v7    # "settingforSync":Ljava/lang/String;
    .restart local p0    # "context":Landroid/content/Context;
    .restart local p1    # "type":I
    .restart local p2    # "ringtoneUri":Landroid/net/Uri;
    :catch_1a0
    move-exception v8

    .line 1014
    .local v8, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    .end local v5    # "cacheUri":Landroid/net/Uri;
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_1b5
    :goto_1b5
    if-eqz p2, :cond_1ba

    .line 1018
    invoke-static {p0, v6, p2}, Landroid/media/RingtoneManager;->saveAbsolutePath(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 1021
    :cond_1ba
    sget-boolean v2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_ACH_RINGTONE:Z

    if-eqz v2, :cond_1c1

    .line 1022
    invoke-static {p0, p2, v7}, Landroid/media/RingtoneManager;->turnOffSyncHapticOnCscSounds(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1025
    .end local v6    # "typeforSync":I
    .end local v7    # "settingforSync":Ljava/lang/String;
    :cond_1c1
    return-void

    .line 939
    .end local v4    # "enabledSim2Only":I
    :cond_1c2
    :goto_1c2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid uri type : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    return-void
.end method

.method private setFilterColumnsList(I)V
    .registers 4
    .param p1, "type"    # I

    .line 684
    iget-object v0, p0, Landroid/media/RingtoneManager;->mFilterColumns:Ljava/util/List;

    .line 685
    .local v0, "columns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 687
    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_d

    and-int/lit16 v1, p1, 0x80

    if-eqz v1, :cond_12

    .line 689
    :cond_d
    const-string v1, "is_ringtone"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 692
    :cond_12
    and-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_1a

    and-int/lit16 v1, p1, 0x100

    if-eqz v1, :cond_1f

    .line 694
    :cond_1a
    const-string v1, "is_notification"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 697
    :cond_1f
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_28

    .line 698
    const-string v1, "is_alarm"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 700
    :cond_28
    return-void
.end method

.method public static setRingtonesAsInitValue(Landroid/content/Context;I)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .line 1561
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 1562
    sput-object v1, Landroid/media/RingtoneManager;->mDefaultRingtoneUri:Landroid/net/Uri;

    goto :goto_23

    .line 1564
    :cond_8
    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_f

    .line 1565
    sput-object v1, Landroid/media/RingtoneManager;->mDefaultRingtone2Uri:Landroid/net/Uri;

    goto :goto_23

    .line 1566
    :cond_f
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_16

    .line 1567
    sput-object v1, Landroid/media/RingtoneManager;->mDefaultNotificationUri:Landroid/net/Uri;

    goto :goto_23

    .line 1568
    :cond_16
    and-int/lit16 v0, p1, 0x100

    if-eqz v0, :cond_1d

    .line 1569
    sput-object v1, Landroid/media/RingtoneManager;->mDefaultNotification2Uri:Landroid/net/Uri;

    goto :goto_23

    .line 1571
    :cond_1d
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_23

    .line 1572
    sput-object v1, Landroid/media/RingtoneManager;->mDefaultAlarmUri:Landroid/net/Uri;

    .line 1575
    :cond_23
    :goto_23
    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getDefaultSoundUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 1576
    .local v0, "defaultUri":Landroid/net/Uri;
    if-nez v0, :cond_2a

    .line 1577
    return-void

    .line 1579
    :cond_2a
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->canonicalizeOrElse(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 1580
    invoke-static {p0, p1, v0}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 1581
    return-void
.end method

.method public static shouldMigrationThemeSoundFile(Landroid/content/Context;I)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I

    .line 2073
    invoke-static {p1}, Landroid/media/RingtoneManager;->getSettingKeyForAbsolutePath(I)Ljava/lang/String;

    move-result-object v0

    .line 2074
    .local v0, "settingKeyPath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_56

    .line 2075
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2076
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v2

    .line 2075
    invoke-static {v1, v0, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 2077
    .local v1, "ringtonePath":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_56

    .line 2078
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "path"

    invoke-static {v2, v3}, Landroid/media/RingtoneManager;->getQueryParameter(Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2079
    .local v2, "absolutePath":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldMigrationThemeSoundFile absolutePath : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RingtoneManager"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_56

    .line 2081
    sget-object v3, Landroid/media/RingtoneManager;->OPEN_THEME_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_56

    sget-object v3, Landroid/media/RingtoneManager;->PREFIX_OPEN_THEME:Ljava/lang/String;

    .line 2082
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_56

    .line 2083
    const/4 v3, 0x1

    return v3

    .line 2088
    .end local v1    # "ringtonePath":Ljava/lang/String;
    .end local v2    # "absolutePath":Ljava/lang/String;
    :cond_56
    const/4 v1, 0x0

    return v1
.end method

.method private static turnOffSyncHapticOnCscSounds(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ringtoneUri"    # Landroid/net/Uri;
    .param p2, "setting"    # Ljava/lang/String;

    .line 2144
    const-string v0, "RingtoneManager"

    const-string v1, "com.samsung.sec.android.application.csc"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 2146
    :try_start_e
    invoke-static {p0, p1}, Landroid/media/AudioManager;->hasHapticChannels(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_41

    .line 2147
    const-string v1, "sound has not haptic channel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    invoke-static {p2}, Landroid/media/RingtoneManager;->getSyncHapticDbName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2149
    .local v1, "syncDbName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 2150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "turn off "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_41} :catch_42

    .line 2156
    .end local v1    # "syncDbName":Ljava/lang/String;
    :cond_41
    goto :goto_46

    .line 2154
    :catch_42
    move-exception v0

    .line 2155
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2158
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_46
    :goto_46
    return-void
.end method


# virtual methods
.method public addCustomExternalRingtone(Landroid/net/Uri;I)Landroid/net/Uri;
    .registers 10
    .param p1, "fileUri"    # Landroid/net/Uri;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1078
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 1083
    iget-object v0, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1084
    .local v0, "mimeType":Ljava/lang/String;
    if-eqz v0, :cond_7b

    .line 1085
    const-string v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e

    const-string v2, "application/ogg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 1086
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 1094
    :cond_2e
    invoke-static {p2}, Landroid/media/RingtoneManager;->getExternalDirectoryForType(I)Ljava/lang/String;

    move-result-object v1

    .line 1097
    .local v1, "subdirectory":Ljava/lang/String;
    iget-object v2, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    .line 1098
    invoke-static {v2, p1}, Landroid/media/Utils;->getFileDisplayNameFromUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/FileUtils;->buildValidFatFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1097
    invoke-static {v2, v1, v3, v0}, Landroid/media/Utils;->getUniqueExternalFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 1102
    .local v2, "outFile":Ljava/io/File;
    iget-object v3, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 1103
    .local v3, "input":Ljava/io/InputStream;
    :try_start_4a
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4f
    .catchall {:try_start_4a .. :try_end_4f} :catchall_6f

    .line 1104
    .local v4, "output":Ljava/io/OutputStream;
    :try_start_4f
    invoke-static {v3, v4}, Landroid/os/FileUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_65

    .line 1105
    :try_start_52
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_55
    .catchall {:try_start_52 .. :try_end_55} :catchall_6f

    .end local v4    # "output":Ljava/io/OutputStream;
    if-eqz v3, :cond_5a

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 1108
    .end local v3    # "input":Ljava/io/InputStream;
    :cond_5a
    iget-object v3, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/provider/MediaStore;->scanFile(Landroid/content/ContentResolver;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 1102
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local v4    # "output":Ljava/io/OutputStream;
    :catchall_65
    move-exception v5

    :try_start_66
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_6a

    goto :goto_6e

    :catchall_6a
    move-exception v6

    :try_start_6b
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "mimeType":Ljava/lang/String;
    .end local v1    # "subdirectory":Ljava/lang/String;
    .end local v2    # "outFile":Ljava/io/File;
    .end local v3    # "input":Ljava/io/InputStream;
    .end local p0    # "this":Landroid/media/RingtoneManager;
    .end local p1    # "fileUri":Landroid/net/Uri;
    .end local p2    # "type":I
    :goto_6e
    throw v5
    :try_end_6f
    .catchall {:try_start_6b .. :try_end_6f} :catchall_6f

    .end local v4    # "output":Ljava/io/OutputStream;
    .restart local v0    # "mimeType":Ljava/lang/String;
    .restart local v1    # "subdirectory":Ljava/lang/String;
    .restart local v2    # "outFile":Ljava/io/File;
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local p0    # "this":Landroid/media/RingtoneManager;
    .restart local p1    # "fileUri":Landroid/net/Uri;
    .restart local p2    # "type":I
    :catchall_6f
    move-exception v4

    if-eqz v3, :cond_7a

    :try_start_72
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_75
    .catchall {:try_start_72 .. :try_end_75} :catchall_76

    goto :goto_7a

    :catchall_76
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7a
    :goto_7a
    throw v4

    .line 1088
    .end local v1    # "subdirectory":Ljava/lang/String;
    .end local v2    # "outFile":Ljava/io/File;
    .end local v3    # "input":Ljava/io/InputStream;
    :cond_7b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ringtone file must have MIME type \"audio/*\". Given file has MIME type \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1079
    .end local v0    # "mimeType":Ljava/lang/String;
    :cond_9a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "External storage is not mounted. Unable to install ringtones."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addCustomRingtone(Landroid/net/Uri;I)Landroid/net/Uri;
    .registers 4
    .param p1, "fileUri"    # Landroid/net/Uri;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2008
    invoke-virtual {p0, p1, p2}, Landroid/media/RingtoneManager;->addCustomExternalRingtone(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getCursor()Landroid/database/Cursor;
    .registers 5

    .line 477
    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_d

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 478
    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    return-object v0

    .line 481
    :cond_d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 482
    .local v0, "ringtoneCursors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/database/Cursor;>;"
    invoke-direct {p0}, Landroid/media/RingtoneManager;->getInternalRingtones()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    invoke-direct {p0}, Landroid/media/RingtoneManager;->getMediaRingtones()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    invoke-direct {p0}, Landroid/media/RingtoneManager;->getOpenThemeRingtone()Landroid/database/Cursor;

    move-result-object v1

    .line 486
    .local v1, "themeCursor":Landroid/database/Cursor;
    if-eqz v1, :cond_29

    .line 487
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    .end local v1    # "themeCursor":Landroid/database/Cursor;
    :cond_29
    iget-boolean v1, p0, Landroid/media/RingtoneManager;->mIncludeParentRingtones:Z

    if-eqz v1, :cond_36

    .line 492
    invoke-direct {p0}, Landroid/media/RingtoneManager;->getParentProfileRingtones()Landroid/database/Cursor;

    move-result-object v1

    .line 493
    .local v1, "parentRingtonesCursor":Landroid/database/Cursor;
    if-eqz v1, :cond_36

    .line 494
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    .end local v1    # "parentRingtonesCursor":Landroid/database/Cursor;
    :cond_36
    new-instance v1, Lcom/android/internal/database/SortCursor;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/database/Cursor;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/database/Cursor;

    const-string v3, "title_key"

    invoke-direct {v1, v2, v3}, Lcom/android/internal/database/SortCursor;-><init>([Landroid/database/Cursor;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    return-object v1
.end method

.method public getIncludeDrm()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 441
    const/4 v0, 0x0

    return v0
.end method

.method public getRingtone(I)Landroid/media/Ringtone;
    .registers 6
    .param p1, "position"    # I

    .line 527
    iget-boolean v0, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_b

    .line 528
    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 531
    :cond_b
    iget-object v0, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    .line 532
    invoke-virtual {p0, p1}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;IZ)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    .line 533
    return-object v0
.end method

.method public getRingtonePosition(Landroid/net/Uri;)I
    .registers 11
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .line 578
    const-string v0, "RingtoneManager"

    const/4 v1, -0x1

    if-nez p1, :cond_6

    return v1

    .line 580
    :cond_6
    :try_start_6
    invoke-virtual {p0}, Landroid/media/RingtoneManager;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 581
    .local v2, "cursor":Landroid/database/Cursor;
    invoke-interface {v2, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 584
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_76

    .line 585
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_22

    goto :goto_76

    .line 590
    :cond_22
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 591
    .local v3, "ringtoneId":J
    iget-object v5, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v5, p1, v6, v6}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    move-result-object v5

    .line 593
    .local v5, "ringtoneTitle":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getRingtonePosition uri :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / title : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / id : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_57
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_75

    .line 596
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    cmp-long v7, v3, v7

    if-nez v7, :cond_57

    .line 597
    const/4 v7, 0x1

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_57

    .line 598
    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    return v0

    .line 612
    .end local v2    # "cursor":Landroid/database/Cursor;
    .end local v3    # "ringtoneId":J
    .end local v5    # "ringtoneTitle":Ljava/lang/String;
    :cond_75
    goto :goto_93

    .line 586
    .restart local v2    # "cursor":Landroid/database/Cursor;
    :cond_76
    :goto_76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRingtonePosition - filter invalid case "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_8c} :catch_8d

    .line 587
    return v1

    .line 610
    .end local v2    # "cursor":Landroid/database/Cursor;
    :catch_8d
    move-exception v2

    .line 611
    .local v2, "e":Ljava/lang/NumberFormatException;
    const-string v3, "NumberFormatException while getting ringtone position, returning -1"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 613
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :goto_93
    return v1
.end method

.method public getRingtoneUri(I)Landroid/net/Uri;
    .registers 6
    .param p1, "position"    # I

    .line 546
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_16

    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1
    :try_end_9
    .catch Landroid/database/StaleDataException; {:try_start_1 .. :try_end_9} :catch_17
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_9} :catch_17

    if-nez v1, :cond_c

    goto :goto_16

    .line 552
    :cond_c
    nop

    .line 554
    iget-object v0, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getUriFromCursor(Landroid/content/Context;Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    .line 547
    :cond_16
    :goto_16
    return-object v0

    .line 549
    :catch_17
    move-exception v1

    .line 550
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v2, "RingtoneManager"

    const-string v3, "Unexpected Exception has been catched."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 551
    return-object v0
.end method

.method public getStopPreviousRingtone()Z
    .registers 2

    .line 419
    iget-boolean v0, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    return v0
.end method

.method public hasHapticChannels(I)Z
    .registers 4
    .param p1, "position"    # I

    .line 1301
    iget-object v0, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/media/AudioManager;->hasHapticChannels(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public inferStreamType()I
    .registers 4

    .line 377
    iget v0, p0, Landroid/media/RingtoneManager;->mType:I

    const/4 v1, 0x5

    const/4 v2, 0x2

    sparse-switch v0, :sswitch_data_10

    .line 388
    packed-switch v0, :pswitch_data_1a

    .line 397
    :pswitch_a
    return v2

    .line 379
    :sswitch_b
    return v1

    .line 381
    :sswitch_c
    return v2

    .line 391
    :pswitch_d
    const/4 v0, 0x4

    return v0

    .line 394
    :pswitch_f
    return v1

    :sswitch_data_10
    .sparse-switch
        0x80 -> :sswitch_c
        0x100 -> :sswitch_b
    .end sparse-switch

    :pswitch_data_1a
    .packed-switch 0x2
        :pswitch_f
        :pswitch_a
        :pswitch_d
    .end packed-switch
.end method

.method public semGetRingtone(II)Landroid/media/Ringtone;
    .registers 6
    .param p1, "position"    # I
    .param p2, "seek"    # I

    .line 1888
    iget-boolean v0, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_b

    .line 1889
    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 1892
    :cond_b
    iget-object v0, p0, Landroid/media/RingtoneManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/media/RingtoneManager;->getRingtoneUri(I)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/RingtoneManager;->inferStreamType()I

    move-result v2

    invoke-static {v0, v1, v2, p2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;II)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    .line 1893
    return-object v0
.end method

.method public setIncludeDrm(Z)V
    .registers 4
    .param p1, "includeDrm"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 453
    if-eqz p1, :cond_9

    .line 454
    const-string v0, "RingtoneManager"

    const-string v1, "setIncludeDrm no longer supported"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_9
    return-void
.end method

.method public setStopPreviousRingtone(Z)V
    .registers 2
    .param p1, "stopPreviousRingtone"    # Z

    .line 412
    iput-boolean p1, p0, Landroid/media/RingtoneManager;->mStopPreviousRingtone:Z

    .line 413
    return-void
.end method

.method public setType(I)V
    .registers 4
    .param p1, "type"    # I

    .line 355
    iget-object v0, p0, Landroid/media/RingtoneManager;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_10

    .line 360
    iput p1, p0, Landroid/media/RingtoneManager;->mType:I

    .line 362
    and-int/lit16 v0, p1, 0x85

    if-eqz v0, :cond_c

    .line 363
    or-int/lit8 p1, p1, 0x5

    .line 366
    :cond_c
    invoke-direct {p0, p1}, Landroid/media/RingtoneManager;->setFilterColumnsList(I)V

    .line 367
    return-void

    .line 356
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Setting filter columns should be done before querying for ringtones."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopPreviousRingtone()V
    .registers 2

    .line 426
    iget-object v0, p0, Landroid/media/RingtoneManager;->mPreviousRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_7

    .line 427
    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 429
    :cond_7
    return-void
.end method

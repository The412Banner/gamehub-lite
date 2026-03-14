.class public Lapp/revanced/extension/gamehub/ComponentManagerActivity;
.super Landroid/app/Activity;
.source "ComponentManagerActivity.java"


# static fields
.field private static final PREFS_INJECTED:Ljava/lang/String; = "bh_injected"

.field private static final REQUEST_CODE_PICK_WCP:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "BannerHub"


# instance fields
.field private componentsDir:Ljava/io/File;

.field private injectedPrefs:Landroid/content/SharedPreferences;

.field private selectedComponent:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$phMJnUSDNE1oaCR8Amcd4RFLhw0(Ljava/io/File;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private backupComponent(Ljava/lang/String;)V
    .locals 7

    .line 178
    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lapp/revanced/extension/gamehub/ComponentManagerActivity;->componentsDir:Ljava/io/File;

    invoke-direct {v2, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    const-string p1, "Component directory not found"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    # backupDir = getExternalFilesDir(null)
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lapp/revanced/extension/gamehub/ComponentManagerActivity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    const-string p1, "External storage not available"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    # bannerHubDir = new File(backupDir, "BannerHub")
    new-instance v1, Ljava/io/File;

    const-string v3, "BannerHub"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    # zipFile = new File(bannerHubDir, name + ".zip")
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".zip"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    # handler
    new-instance v4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    # start thread with lambda4(this, src=v2, zipFile=v3, handler=v4, name=p1)
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lapp/revanced/extension/gamehub/ComponentManagerActivity$$ExternalSyntheticLambda4;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lapp/revanced/extension/gamehub/ComponentManagerActivity$$ExternalSyntheticLambda4;-><init>(Lapp/revanced/extension/gamehub/ComponentManagerActivity;Ljava/io/File;Ljava/io/File;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private buildList(Landroid/widget/LinearLayout;Ljava/util/List;)Landroid/widget/ListView;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/widget/ListView;"
        }
    .end annotation

    .line 243
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090003

    invoke-direct {v0, p0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 245
    new-instance p2, Landroid/widget/ListView;

    invoke-direct {p2, p0}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 246
    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 247
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, -0x1

    invoke-direct {p0, v2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, p2, p0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p2
.end method

.method private buildRoot()Landroid/widget/LinearLayout;
    .locals 3

    .line 227
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 228
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x30

    .line 229
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 231
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 232
    const-string p0, "Banners Component Injector"

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p0, 0x41a00000    # 20.0f

    .line 233
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 p0, 0x11

    .line 234
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setGravity(I)V

    const/4 p0, 0x0

    const/16 v2, 0x18

    .line 235
    invoke-virtual {v1, p0, p0, p0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 236
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private getFileName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7

    .line 164
    :try_start_0
    invoke-virtual {p0}, Lapp/revanced/extension/gamehub/ComponentManagerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 p0, 0x1

    new-array v2, p0, [Ljava/lang/String;

    const-string p0, "_display_name"

    const/4 v6, 0x0

    aput-object p0, v2, v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    .line 166
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 167
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_0

    .line 169
    :try_start_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-object p1

    :catchall_0
    move-exception v0

    move-object p1, v0

    if-eqz p0, :cond_1

    .line 164
    :try_start_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_4
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p1

    :cond_2
    if-eqz p0, :cond_3

    .line 169
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 170
    const-string p1, "BannerHub"

    const-string v0, "getFileName failed"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private openFilePicker()V
    .locals 2

    .line 126
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x3e9

    .line 129
    invoke-virtual {p0, v0, v1}, Lapp/revanced/extension/gamehub/ComponentManagerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showComponents()V
    .locals 7

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    iget-object v1, p0, Lapp/revanced/extension/gamehub/ComponentManagerActivity;->componentsDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    iget-object v1, p0, Lapp/revanced/extension/gamehub/ComponentManagerActivity;->componentsDir:Ljava/io/File;

    new-instance v2, Lapp/revanced/extension/gamehub/ComponentManagerActivity$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Lapp/revanced/extension/gamehub/ComponentManagerActivity$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 71
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 72
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 73
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 74
    iget-object v5, p0, Lapp/revanced/extension/gamehub/ComponentManagerActivity;->injectedPrefs:Landroid/content/SharedPreferences;

    const/4 v6, 0x0

    invoke-interface {v5, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 75
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " [-> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 79
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "(no components found)"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_2
    invoke-direct {p0}, Lapp/revanced/extension/gamehub/ComponentManagerActivity;->buildRoot()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 82
    invoke-direct {p0, v1, v0}, Lapp/revanced/extension/gamehub/ComponentManagerActivity;->buildList(Landroid/widget/LinearLayout;Ljava/util/List;)Landroid/widget/ListView;

    move-result-object v2

    .line 83
    invoke-virtual {p0, v1}, Lapp/revanced/extension/gamehub/ComponentManagerActivity;->setContentView(Landroid/view/View;)V

    .line 85
    new-instance v1, Lapp/revanced/extension/gamehub/ComponentManagerActivity$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, v0}, Lapp/revanced/extension/gamehub/ComponentManagerActivity$$ExternalSyntheticLambda8;-><init>(Lapp/revanced/extension/gamehub/ComponentManagerActivity;Ljava/util/List;)V

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private showOptions()V
    .locals 5

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    const-string v1, "Inject file"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    const-string v1, "Backup"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    const-string v1, "Back"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-direct {p0}, Lapp/revanced/extension/gamehub/ComponentManagerActivity;->buildRoot()Landroid/widget/LinearLayout;

    move-result-object v1

    .line 105
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 106
    iget-object v3, p0, Lapp/revanced/extension/gamehub/ComponentManagerActivity;->selectedComponent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, 0x41600000    # 14.0f

    .line 107
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v3, 0x0

    const/16 v4, 0x18

    .line 108
    invoke-virtual {v2, v3, v3, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 109
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 111
    invoke-direct {p0, v1, v0}, Lapp/revanced/extension/gamehub/ComponentManagerActivity;->buildList(Landroid/widget/LinearLayout;Ljava/util/List;)Landroid/widget/ListView;

    move-result-object v0

    .line 112
    invoke-virtual {p0, v1}, Lapp/revanced/extension/gamehub/ComponentManagerActivity;->setContentView(Landroid/view/View;)V

    .line 114
    new-instance v1, Lapp/revanced/extension/gamehub/ComponentManagerActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lapp/revanced/extension/gamehub/ComponentManagerActivity$$ExternalSyntheticLambda5;-><init>(Lapp/revanced/extension/gamehub/ComponentManagerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

# zipDir(File src, String prefix, byte[] buf, ZipOutputStream zos)
# Locals: v0=files[], v1=len, v2=idx, v3=curFile, v4=entryName, v5=temp, v6=temp
.method private static zipDir(Ljava/io/File;Ljava/lang/String;[BLjava/util/zip/ZipOutputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_loop
    if-ge v2, v1, :cond_end

    aget-object v3, v0, v2

    # Compute entryName = prefix.isEmpty() ? f.getName() : prefix + "/" + f.getName()
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_build_name

    # prefix is empty: entryName = f.getName()
    move-object v4, v5

    goto :cond_have_name

    :cond_build_name
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_have_name
    # v4 = entryName
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_file

    # directory: recurse with entryName as new prefix
    invoke-static {v3, v4, p2, p3}, Lapp/revanced/extension/gamehub/ComponentManagerActivity;->zipDir(Ljava/io/File;Ljava/lang/String;[BLjava/util/zip/ZipOutputStream;)V

    goto :goto_next

    :cond_file
    new-instance v5, Ljava/util/zip/ZipEntry;

    invoke-direct {v5, v4}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    :goto_read
    invoke-virtual {v5, p2}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_read_done

    const/4 v4, 0x0

    invoke-virtual {p3, p2, v4, v6}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_read

    :cond_read_done
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p3}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    goto :goto_next

    :catchall_0
    move-exception v4

    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v4

    :catchall_1
    move-exception v5

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    throw v4

    :goto_next
    add-int/lit8 v2, v2, 0x1

    goto :goto_loop

    :cond_end
    return-void
.end method


# virtual methods
.method synthetic lambda$backupComponent$5$app-revanced-extension-gamehub-ComponentManagerActivity(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Backed up to Android/data/.../files/BannerHub/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ".zip"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$backupComponent$6$app-revanced-extension-gamehub-ComponentManagerActivity(Ljava/lang/Exception;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Backup failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

# Thread body: p0=this, p1=src(File), p2=zipFile(File), p3=handler, p4=name(String)
.method synthetic lambda$backupComponent$7$app-revanced-extension-gamehub-ComponentManagerActivity(Ljava/io/File;Ljava/io/File;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_no_delete

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_no_delete
    const/16 v0, 0x2000

    new-array v0, v0, [B

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_inner
    const-string v3, ""

    invoke-static {p1, v3, v0, v2}, Lapp/revanced/extension/gamehub/ComponentManagerActivity;->zipDir(Ljava/io/File;Ljava/lang/String;[BLjava/util/zip/ZipOutputStream;)V
    :try_end_inner
    .catchall {:try_start_inner .. :try_end_inner} :catchall_close_zos

    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Lapp/revanced/extension/gamehub/ComponentManagerActivity$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p4}, Lapp/revanced/extension/gamehub/ComponentManagerActivity$$ExternalSyntheticLambda2;-><init>(Lapp/revanced/extension/gamehub/ComponentManagerActivity;Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_close_zos
    move-exception v3

    :try_start_close_zos
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_close_zos
    .catchall {:try_start_close_zos .. :try_end_close_zos} :catchall_suppress

    throw v3

    :catchall_suppress
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    throw v3

    :catch_0
    move-exception p1

    const-string p2, "BannerHub"

    const-string p4, "Backup failed"

    invoke-static {p2, p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p2, Lapp/revanced/extension/gamehub/ComponentManagerActivity$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p1}, Lapp/revanced/extension/gamehub/ComponentManagerActivity$$ExternalSyntheticLambda3;-><init>(Lapp/revanced/extension/gamehub/ComponentManagerActivity;Ljava/lang/Exception;)V

    invoke-virtual {p3, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$onActivityResult$2$app-revanced-extension-gamehub-ComponentManagerActivity()V
    .locals 2

    const-string v0, "Injected successfully"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lapp/revanced/extension/gamehub/ComponentManagerActivity;->showComponents()V

    return-void
.end method

.method synthetic lambda$onActivityResult$3$app-revanced-extension-gamehub-ComponentManagerActivity(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Inject failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$onActivityResult$4$app-revanced-extension-gamehub-ComponentManagerActivity(Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lapp/revanced/extension/gamehub/ComponentManagerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lapp/revanced/extension/gamehub/WcpExtractor;->extract(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/io/File;)V

    invoke-direct {p0, p1}, Lapp/revanced/extension/gamehub/ComponentManagerActivity;->getFileName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lapp/revanced/extension/gamehub/ComponentManagerActivity;->injectedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, p3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    new-instance p1, Lapp/revanced/extension/gamehub/ComponentManagerActivity$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lapp/revanced/extension/gamehub/ComponentManagerActivity$$ExternalSyntheticLambda0;-><init>(Lapp/revanced/extension/gamehub/ComponentManagerActivity;)V

    invoke-virtual {p4, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "BannerHub"

    const-string p3, "Extraction failed"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance p2, Lapp/revanced/extension/gamehub/ComponentManagerActivity$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p1}, Lapp/revanced/extension/gamehub/ComponentManagerActivity$$ExternalSyntheticLambda1;-><init>(Lapp/revanced/extension/gamehub/ComponentManagerActivity;Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$showComponents$0$app-revanced-extension-gamehub-ComponentManagerActivity(Ljava/util/List;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "(no components found)"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    const-string p2, " [-> "

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_1

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lapp/revanced/extension/gamehub/ComponentManagerActivity;->selectedComponent:Ljava/lang/String;

    invoke-direct {p0}, Lapp/revanced/extension/gamehub/ComponentManagerActivity;->showOptions()V

    return-void
.end method

.method synthetic lambda$showOptions$1$app-revanced-extension-gamehub-ComponentManagerActivity(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    if-eqz p3, :cond_2

    const/4 p1, 0x1

    if-eq p3, p1, :cond_1

    const/4 p1, 0x2

    if-eq p3, p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lapp/revanced/extension/gamehub/ComponentManagerActivity;->showComponents()V

    return-void

    :cond_1
    iget-object p1, p0, Lapp/revanced/extension/gamehub/ComponentManagerActivity;->selectedComponent:Ljava/lang/String;

    invoke-direct {p0, p1}, Lapp/revanced/extension/gamehub/ComponentManagerActivity;->backupComponent(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-direct {p0}, Lapp/revanced/extension/gamehub/ComponentManagerActivity;->openFilePicker()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object p1, p0, Lapp/revanced/extension/gamehub/ComponentManagerActivity;->componentsDir:Ljava/io/File;

    iget-object p2, p0, Lapp/revanced/extension/gamehub/ComponentManagerActivity;->selectedComponent:Ljava/lang/String;

    invoke-direct {v3, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v4, p0, Lapp/revanced/extension/gamehub/ComponentManagerActivity;->selectedComponent:Ljava/lang/String;

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v5, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lapp/revanced/extension/gamehub/ComponentManagerActivity$$ExternalSyntheticLambda6;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lapp/revanced/extension/gamehub/ComponentManagerActivity$$ExternalSyntheticLambda6;-><init>(Lapp/revanced/extension/gamehub/ComponentManagerActivity;Landroid/net/Uri;Ljava/io/File;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    # componentsDir = new File(getFilesDir(), "usr/home/components")
    invoke-virtual {p0}, Lapp/revanced/extension/gamehub/ComponentManagerActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "usr/home/components"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lapp/revanced/extension/gamehub/ComponentManagerActivity;->componentsDir:Ljava/io/File;

    # injectedPrefs = getSharedPreferences("bh_injected", 0)
    const-string v0, "bh_injected"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lapp/revanced/extension/gamehub/ComponentManagerActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lapp/revanced/extension/gamehub/ComponentManagerActivity;->injectedPrefs:Landroid/content/SharedPreferences;

    # Restore selectedComponent from savedInstanceState
    if-eqz p1, :cond_no_saved_state

    const-string v0, "selected_component"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lapp/revanced/extension/gamehub/ComponentManagerActivity;->selectedComponent:Ljava/lang/String;

    :cond_no_saved_state
    iget-object v0, p0, Lapp/revanced/extension/gamehub/ComponentManagerActivity;->selectedComponent:Ljava/lang/String;

    if-eqz v0, :cond_show_components

    invoke-direct {p0}, Lapp/revanced/extension/gamehub/ComponentManagerActivity;->showOptions()V

    return-void

    :cond_show_components
    invoke-direct {p0}, Lapp/revanced/extension/gamehub/ComponentManagerActivity;->showComponents()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lapp/revanced/extension/gamehub/ComponentManagerActivity;->selectedComponent:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "selected_component"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

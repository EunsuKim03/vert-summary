; ModuleID = 'llvm/c_crown/0014_libcsv_init/csvinfo_reprocessed.c'
source_filename = "llvm/c_crown/0014_libcsv_init/csvinfo_reprocessed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.csv_parser = type { i32, i32, i64, i8*, i64, i64, i32, i8, i8, i8, i32 (i8)*, i32 (i8)*, i64, i8* (i64)*, i8* (i8*, i64)*, void (i8*)* }

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local void @cb1(i8* nocapture noundef readnone %0, i64 noundef %1, i8* nocapture noundef %2) local_unnamed_addr #0 {
  %4 = bitcast i8* %2 to i64*
  %5 = load i64, i64* %4, align 8, !tbaa !5
  %6 = add i64 %5, 1
  store i64 %6, i64* %4, align 8, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn
define dso_local void @cb2(i32 noundef %0, i8* nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds i8, i8* %1, i64 8
  %4 = bitcast i8* %3 to i64*
  %5 = load i64, i64* %4, align 8, !tbaa !10
  %6 = add i64 %5, 1
  store i64 %6, i64* %4, align 8, !tbaa !10
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly
define dso_local i32 @csv_init(%struct.csv_parser* noundef writeonly %0, i8 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = icmp eq %struct.csv_parser* %0, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %0, i64 0, i32 7
  %6 = bitcast %struct.csv_parser* %0 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(44) %6, i8 0, i64 44, i1 false)
  store i8 %1, i8* %5, align 4, !tbaa !11
  %7 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %0, i64 0, i32 8
  store i8 34, i8* %7, align 1, !tbaa !15
  %8 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %0, i64 0, i32 9
  store i8 44, i8* %8, align 2, !tbaa !16
  %9 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %0, i64 0, i32 10
  %10 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %0, i64 0, i32 12
  %11 = bitcast i32 (i8)** %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(16) %11, i8 0, i64 16, i1 false)
  store i64 128, i64* %10, align 8, !tbaa !17
  %12 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %0, i64 0, i32 13
  store i8* (i64)* null, i8* (i64)** %12, align 8, !tbaa !18
  %13 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %0, i64 0, i32 14
  store i8* (i8*, i64)* @realloc, i8* (i8*, i64)** %13, align 8, !tbaa !19
  %14 = getelementptr inbounds %struct.csv_parser, %struct.csv_parser* %0, i64 0, i32 15
  store void (i8*)* @free, void (i8*)** %14, align 8, !tbaa !20
  br label %15

15:                                               ; preds = %2, %4
  %16 = phi i32 [ 0, %4 ], [ -1, %2 ]
  ret i32 %16
}

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare noalias noundef i8* @realloc(i8* nocapture noundef, i64 noundef) #2

; Function Attrs: inaccessiblemem_or_argmemonly mustprogress nounwind willreturn
declare void @free(i8* nocapture noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind uwtable willreturn writeonly "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inaccessiblemem_or_argmemonly mustprogress nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !7, i64 0}
!6 = !{!"counts", !7, i64 0, !7, i64 8}
!7 = !{!"long", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!6, !7, i64 8}
!11 = !{!12, !8, i64 44}
!12 = !{!"csv_parser", !13, i64 0, !13, i64 4, !7, i64 8, !14, i64 16, !7, i64 24, !7, i64 32, !13, i64 40, !8, i64 44, !8, i64 45, !8, i64 46, !14, i64 48, !14, i64 56, !7, i64 64, !14, i64 72, !14, i64 80, !14, i64 88}
!13 = !{!"int", !8, i64 0}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!12, !8, i64 45}
!16 = !{!12, !8, i64 46}
!17 = !{!12, !7, i64 64}
!18 = !{!12, !14, i64 72}
!19 = !{!12, !14, i64 80}
!20 = !{!12, !14, i64 88}

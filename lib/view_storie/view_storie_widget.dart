import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewStorieWidget extends StatefulWidget {
  const ViewStorieWidget({Key? key}) : super(key: key);

  @override
  _ViewStorieWidgetState createState() => _ViewStorieWidgetState();
}

class _ViewStorieWidgetState extends State<ViewStorieWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Color(0xFF4B39EF),
            size: 30,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
          child: StreamBuilder<List<StoriesRecord>>(
            stream: queryStoriesRecord(
              singleRecord: true,
            ),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return Center(
                  child: SizedBox(
                    width: 50,
                    height: 50,
                    child: SpinKitChasingDots(
                      color: FlutterFlowTheme.of(context).primaryColor,
                      size: 50,
                    ),
                  ),
                );
              }
              List<StoriesRecord> columnStoriesRecordList = snapshot.data!;
              // Return an empty Container when the document does not exist.
              if (snapshot.data!.isEmpty) {
                return Container();
              }
              final columnStoriesRecord = columnStoriesRecordList.first;
              return Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 4, 16, 0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: Image.network(
                                    'https://images.unsplash.com/photo-1611590027211-b954fd027b51?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDd8fHByb2ZpbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60',
                                    width: 40,
                                    height: 40,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12, 0, 0, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          columnStoriesRecord.nameStory!,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF14181B),
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                        Text(
                                          dateTimeFormat('yMMMd',
                                              columnStoriesRecord.dateCreate!),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF57636C),
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 30,
                                  borderWidth: 1,
                                  buttonSize: 40,
                                  icon: Icon(
                                    Icons.keyboard_control_rounded,
                                    color: Color(0xFF57636C),
                                    size: 20,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 15, 0, 12),
                              child: Text(
                                columnStoriesRecord.contentStory!,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: Color(0xFF57636C),
                                      fontSize: 14,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Icon(
                                    Icons.favorite_border,
                                    color: Color(0xFF4B39EF),
                                    size: 24,
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        24, 0, 0, 0),
                                    child: Icon(
                                      Icons.mode_comment_outlined,
                                      color: Color(0xFF4B39EF),
                                      size: 24,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

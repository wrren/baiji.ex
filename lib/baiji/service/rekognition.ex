defmodule Baiji.Rekognition do
  @moduledoc """
  This is the Amazon Rekognition API reference.
  """
  
  @doc """
  Compares a face in the *source* input image with each face detected in the
  *target* input image.

  <note> If the source image contains multiple faces, the service detects the
  largest face and compares it with each face detected in the target image.

  </note> In response, the operation returns an array of face matches ordered
  by similarity score in descending order. For each face match, the response
  provides a bounding box of the face, facial landmarks, pose details (pitch,
  role, and yaw), quality (brightness and sharpness), and confidence value
  (indicating the level of confidence that the bounding box contains a face).
  The response also provides a similarity score, which indicates how closely
  the faces match.

  <note> By default, only faces with a similarity score of greater than or
  equal to 80% are returned in the response. You can change this value by
  specifying the `SimilarityThreshold` parameter.

  </note> `CompareFaces` also returns an array of faces that don't match the
  source image. For each face, it returns a bounding box, confidence value,
  landmarks, pose details, and quality. The response also returns information
  about the face in the source image, including the bounding box of the face
  and confidence value.

  If the image doesn't contain Exif metadata, `CompareFaces` returns
  orientation information for the source and target images. Use these values
  to display the images with the correct image orientation.

  <note> This is a stateless API operation. That is, data returned by this
  operation doesn't persist.

  </note> For an example, see `get-started-exercise-compare-faces`.

  This operation requires permissions to perform the
  `rekognition:CompareFaces` action.
  """
  def compare_faces(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CompareFaces",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Creates a collection in an AWS Region. You can add faces to the collection
  using the operation.

  For example, you might create collections, one for each of your application
  users. A user can then index faces using the `IndexFaces` operation and
  persist results in a specific collection. Then, a user can search the
  collection for faces in the user-specific container.

  <note> Collection names are case-sensitive.

  </note> For an example, see `example1`.

  This operation requires permissions to perform the
  `rekognition:CreateCollection` action.
  """
  def create_collection(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "CreateCollection",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Deletes the specified collection. Note that this operation removes all
  faces in the collection. For an example, see `example1`.

  This operation requires permissions to perform the
  `rekognition:DeleteCollection` action.
  """
  def delete_collection(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteCollection",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Deletes faces from a collection. You specify a collection ID and an array
  of face IDs to remove from the collection.

  This operation requires permissions to perform the
  `rekognition:DeleteFaces` action.
  """
  def delete_faces(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DeleteFaces",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Detects faces within an image (JPEG or PNG) that is provided as input.

  For each face detected, the operation returns face details including a
  bounding box of the face, a confidence value (that the bounding box
  contains a face), and a fixed set of attributes such as facial landmarks
  (for example, coordinates of eye and mouth), gender, presence of beard,
  sunglasses, etc.

  The face-detection algorithm is most effective on frontal faces. For
  non-frontal or obscured faces, the algorithm may not detect the faces or
  might detect faces with lower confidence.

  <note> This is a stateless API operation. That is, the operation does not
  persist any data.

  </note> For an example, see `get-started-exercise-detect-faces`.

  This operation requires permissions to perform the
  `rekognition:DetectFaces` action.
  """
  def detect_faces(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DetectFaces",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Detects instances of real-world labels within an image (JPEG or PNG)
  provided as input. This includes objects like flower, tree, and table;
  events like wedding, graduation, and birthday party; and concepts like
  landscape, evening, and nature. For an example, see
  `get-started-exercise-detect-labels`.

  For each object, scene, and concept the API returns one or more labels.
  Each label provides the object name, and the level of confidence that the
  image contains the object. For example, suppose the input image has a
  lighthouse, the sea, and a rock. The response will include all three
  labels, one for each object.

  `{Name: lighthouse, Confidence: 98.4629}`

  `{Name: rock,Confidence: 79.2097}`

  ` {Name: sea,Confidence: 75.061}`

  In the preceding example, the operation returns one label for each of the
  three objects. The operation can also return multiple labels for the same
  object in the image. For example, if the input image shows a flower (for
  example, a tulip), the operation might return the following three labels.

  `{Name: flower,Confidence: 99.0562}`

  `{Name: plant,Confidence: 99.0562}`

  `{Name: tulip,Confidence: 99.0562}`

  In this example, the detection algorithm more precisely identifies the
  flower as a tulip.

  You can provide the input image as an S3 object or as base64-encoded bytes.
  In response, the API returns an array of labels. In addition, the response
  also includes the orientation correction. Optionally, you can specify
  `MinConfidence` to control the confidence threshold for the labels
  returned. The default is 50%. You can also add the `MaxLabels` parameter to
  limit the number of labels returned.

  <note> If the object detected is a person, the operation doesn't provide
  the same facial details that the `DetectFaces` operation provides.

  </note> This is a stateless API operation. That is, the operation does not
  persist any data.

  This operation requires permissions to perform the
  `rekognition:DetectLabels` action.
  """
  def detect_labels(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DetectLabels",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Detects explicit or suggestive adult content in a specified JPEG or PNG
  format image. Use `DetectModerationLabels` to moderate images depending on
  your requirements. For example, you might want to filter images that
  contain nudity, but not images containing suggestive content.

  To filter images, use the labels returned by `DetectModerationLabels` to
  determine which types of content are appropriate. For information about
  moderation labels, see `image-moderation`.
  """
  def detect_moderation_labels(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "DetectModerationLabels",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Gets the name and additional information about a celebrity based on his or
  her Rekognition ID. The additional information is returned as an array of
  URLs. If there is no additional information about the celebrity, this list
  is empty. For more information, see `celebrity-recognition`.

  This operation requires permissions to perform the
  `rekognition:GetCelebrityInfo` action.
  """
  def get_celebrity_info(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "GetCelebrityInfo",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Detects faces in the input image and adds them to the specified collection.

  Amazon Rekognition does not save the actual faces detected. Instead, the
  underlying detection algorithm first detects the faces in the input image,
  and for each face extracts facial features into a feature vector, and
  stores it in the back-end database. Amazon Rekognition uses feature vectors
  when performing face match and search operations using the and operations.

  If you provide the optional `externalImageID` for the input image you
  provided, Amazon Rekognition associates this ID with all faces that it
  detects. When you call the operation, the response returns the external ID.
  You can use this external image ID to create a client-side index to
  associate the faces with each image. You can then use the index to find all
  faces in an image.

  In response, the operation returns an array of metadata for all detected
  faces. This includes, the bounding box of the detected face, confidence
  value (indicating the bounding box contains a face), a face ID assigned by
  the service for each face that is detected and stored, and an image ID
  assigned by the service for the input image. If you request all facial
  attributes (using the `detectionAttributes` parameter, Amazon Rekognition
  returns detailed facial attributes such as facial landmarks (for example,
  location of eye and mount) and other facial attributes such gender. If you
  provide the same image, specify the same collection, and use the same
  external ID in the `IndexFaces` operation, Amazon Rekognition doesn't save
  duplicate face metadata.

  For an example, see `example2`.

  This operation requires permissions to perform the `rekognition:IndexFaces`
  action.
  """
  def index_faces(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "IndexFaces",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns list of collection IDs in your account. If the result is truncated,
  the response also provides a `NextToken` that you can use in the subsequent
  request to fetch the next set of collection IDs.

  For an example, see `example1`.

  This operation requires permissions to perform the
  `rekognition:ListCollections` action.
  """
  def list_collections(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListCollections",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns metadata for faces in the specified collection. This metadata
  includes information such as the bounding box coordinates, the confidence
  (that the bounding box contains a face), and face ID. For an example, see
  `example3`.

  This operation requires permissions to perform the `rekognition:ListFaces`
  action.
  """
  def list_faces(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "ListFaces",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  Returns an array of celebrities recognized in the input image. The image is
  passed either as base64-encoded image bytes or as a reference to an image
  in an Amazon S3 bucket. The image must be either a PNG or JPEG formatted
  file. For more information, see `celebrity-recognition`.

  `RecognizeCelebrities` returns the 15 largest faces in the image. It lists
  recognized celebrities in the `CelebrityFaces` list and unrecognized faces
  in the `UnrecognizedFaces` list. The operation doesn't return celebrities
  whose face sizes are smaller than the largest 15 faces in the image.

  For each celebrity recognized, the API returns a `Celebrity` object. The
  `Celebrity` object contains the celebrity name, ID, URL links to additional
  information, match confidence, and a `ComparedFace` object that you can use
  to locate the celebrity's face on the image.

  Rekognition does not retain information about which images a celebrity has
  been recognized in. Your application must store this information and use
  the `Celebrity` ID property as a unique identifier for the celebrity. If
  you don't store the celebrity name or additional information URLs returned
  by `RecognizeCelebrities`, you will need the ID to identify the celebrity
  in a call to the operation.

  For an example, see `recognize-celebrities-tutorial`.

  This operation requires permissions to perform the
  `rekognition:RecognizeCelebrities` operation.
  """
  def recognize_celebrities(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "RecognizeCelebrities",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  For a given input face ID, searches for matching faces in the collection
  the face belongs to. You get a face ID when you add a face to the
  collection using the `IndexFaces` operation. The operation compares the
  features of the input face with faces in the specified collection.

  <note> You can also search faces without indexing faces by using the
  `SearchFacesByImage` operation.

  </note> The operation response returns an array of faces that match,
  ordered by similarity score with the highest similarity first. More
  specifically, it is an array of metadata for each face match that is found.
  Along with the metadata, the response also includes a `confidence` value
  for each face match, indicating the confidence that the specific face
  matches the input face.

  For an example, see `example3`.

  This operation requires permissions to perform the
  `rekognition:SearchFaces` action.
  """
  def search_faces(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "SearchFaces",
      type:     :json,
      method:   :post
    }
  end
  
  @doc """
  For a given input image, first detects the largest face in the image, and
  then searches the specified collection for matching faces. The operation
  compares the features of the input face with faces in the specified
  collection.

  <note> To search for all faces in an input image, you might first call the
  operation, and then use the face IDs returned in subsequent calls to the
  operation.

  You can also call the `DetectFaces` operation and use the bounding boxes in
  the response to make face crops, which then you can pass in to the
  `SearchFacesByImage` operation.

  </note> The response returns an array of faces that match, ordered by
  similarity score with the highest similarity first. More specifically, it
  is an array of metadata for each face match found. Along with the metadata,
  the response also includes a `similarity` indicating how similar the face
  is to the input face. In the response, the operation also returns the
  bounding box (and a confidence level that the bounding box contains a face)
  of the face that Amazon Rekognition used for the input image.

  For an example, see `example3`.

  This operation requires permissions to perform the
  `rekognition:SearchFacesByImage` action.
  """
  def search_faces_by_image(input \\ %{}, options \\ []) do
    %Baiji.Operation{
      input:    input,
      options:  options,
      action:   "SearchFacesByImage",
      type:     :json,
      method:   :post
    }
  end
  
end